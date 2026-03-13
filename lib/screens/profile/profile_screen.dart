import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../models/user.dart';
import '../../models/user_stats.dart' as models;
import '../../providers/user_provider.dart';
import '../../providers/auth_provider.dart';
import '../../router/routes.dart';
import '../../widgets/common/error_widget.dart';

/// Profile screen - displays user info and stats.
class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    // Load profile and stats on init
    Future.microtask(() {
      ref.read(userProfileProvider.notifier).load();
      ref.read(userStatsNotifierProvider.notifier).load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final profileState = ref.watch(userProfileProvider);
    final statsState = ref.watch(userStatsNotifierProvider);
    final logoutState = ref.watch(logoutNotifierProvider);

    ref.listen<AsyncValue>(
      logoutNotifierProvider,
      (previous, next) {
        next.when(
          data: (loggedOut) {
            if (loggedOut && mounted) {
              // Navigation is handled by router
            }
          },
          error: (error, stack) {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(error.toString()),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          loading: () {},
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              context.push(Routes.settings);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User info card
            profileState.when(
              data: (user) {
                if (user == null) return const SizedBox.shrink();
                return _UserCard(user: user);
              },
              loading: () => const Center(
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: CircularProgressIndicator(),
                ),
              ),
              error: (error, stack) => AppErrorWidget(
                message: error.toString(),
                onRetry: () => ref.read(userProfileProvider.notifier).load(),
              ),
            ),
            const SizedBox(height: 24),

            // Stats section
            Text(
              'Your Statistics',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 16),
            statsState.when(
              data: (stats) {
                if (stats == null) return const SizedBox.shrink();
                return _StatsGrid(stats: stats);
              },
              loading: () => const Center(
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: CircularProgressIndicator(),
                ),
              ),
              error: (error, stack) => AppErrorWidget(
                message: error.toString(),
                onRetry: () => ref.read(userStatsNotifierProvider.notifier).load(),
              ),
            ),
            const SizedBox(height: 24),

            // Account actions
            Text(
              'Account',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 16),
            _ActionButton(
              icon: Icons.edit_outlined,
              title: 'Edit Profile',
              subtitle: 'Update your personal information',
              onTap: () {
                context.push(Routes.editProfile);
              },
            ),
            _ActionButton(
              icon: Icons.lock_outlined,
              title: 'Change Password',
              subtitle: 'Update your password',
              onTap: () {
                context.push(Routes.changePassword);
              },
            ),
            const SizedBox(height: 24),

            // Danger zone
            _ActionButton(
              icon: Icons.logout,
              iconColor: const Color(0xFFBA1A1A),
              title: 'Logout',
              subtitle: 'Sign out of your account',
              onTap: logoutState.isLoading
                  ? null
                  : () {
                      ref.read(logoutNotifierProvider.notifier).logout();
                    },
            ),
          ],
        ),
      ),
    );
  }
}

class _UserCard extends StatelessWidget {
  const _UserCard({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: const Color(0xFF1B3A5C),
              child: Text(
                user.full_name?.isNotEmpty == true
                    ? user.full_name![0].toUpperCase()
                    : user.email[0].toUpperCase(),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.full_name ?? 'User',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user.email,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  if (user.phone != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      user.phone!,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatsGrid extends StatelessWidget {
  const _StatsGrid({required this.stats});

  final models.UserStats stats;

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        mainAxisExtent: 120,
      ),
      children: [
        _StatCard(
          icon: Icons.chat_bubble_outline,
          label: 'Questions Asked',
          value: stats.totalQueries.toString(),
          color: const Color(0xFF1B3A5C),
        ),
        _StatCard(
          icon: Icons.calendar_today,
          label: 'This Month',
          value: stats.queriesThisMonth.toString(),
          color: const Color(0xFF2E7D4F),
        ),
        _StatCard(
          icon: Icons.speed,
          label: 'Avg Response Time',
          value: '${(stats.avgResponseTime / 1000).toStringAsFixed(1)}s',
          color: const Color(0xFFD4A843),
        ),
        _StatCard(
          icon: Icons.sentiment_satisfied,
          label: 'Satisfaction',
          value: stats.satisfactionScore != null
              ? '${stats.satisfactionScore!.toStringAsFixed(1)}/5'
              : 'N/A',
          color: const Color(0xFF9C27B0),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 8),
            Flexible(
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.iconColor,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: (iconColor ?? const Color(0xFF1B3A5C)).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: iconColor ?? const Color(0xFF1B3A5C),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
