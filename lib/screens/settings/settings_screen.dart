import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../providers/auth_provider.dart';
import '../../router/routes.dart';

/// Settings screen - app settings and info.
class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'MMara',
    packageName: 'com.mmara.app',
    version: '1.0.0',
    buildNumber: '1',
  );

  @override
  void initState() {
    super.initState();
    _loadPackageInfo();
  }

  Future<void> _loadPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          // About section
          const _SectionHeader(title: 'About'),
          _SettingsTile(
            icon: Icons.info_outline,
            title: 'About MMara',
            subtitle: 'Legal First Aid Assistant for Ghanaians',
            onTap: () => _showAboutDialog(),
          ),
          _SettingsTile(
            icon: Icons.description_outlined,
            title: 'Terms of Service',
            onTap: () => _showComingSoon('Terms of Service'),
          ),
          _SettingsTile(
            icon: Icons.privacy_tip_outlined,
            title: 'Privacy Policy',
            onTap: () => _showComingSoon('Privacy Policy'),
          ),

          // Support section
          const _SectionHeader(title: 'Support'),
          _SettingsTile(
            icon: Icons.help_outline,
            title: 'Help & Support',
            onTap: () => _showComingSoon('Help & Support'),
          ),
          _SettingsTile(
            icon: Icons.contact_page_outlined,
            title: 'Contact Us',
            onTap: () => _showComingSoon('Contact Us'),
          ),

          // App info
          const _SectionHeader(title: 'App Info'),
          _SettingsTile(
            icon: Icons.phone_android,
            title: 'App Version',
            subtitle: 'v${_packageInfo.version} (${_packageInfo.buildNumber})',
            enabled: false,
          ),

          const SizedBox(height: 24),

          // Logout
          _SettingsTile(
            icon: Icons.logout,
            iconColor: const Color(0xFFBA1A1A),
            title: 'Logout',
            onTap: () => _showLogoutDialog(),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }

  void _showAboutDialog() {
    showAboutDialog(
      context: context,
      applicationName: 'MMara',
      applicationVersion: 'v${_packageInfo.version}',
      applicationIcon: const Icon(Icons.balance, size: 48),
      children: [
        const Text(
          'MMara is an AI-powered legal first-aid assistant designed to help Ghanaians understand their legal rights.',
        ),
      ],
    );
  }

  void _showComingSoon(String feature) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$feature coming soon'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(logoutNotifierProvider.notifier).logout();
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF1B3A5C).withOpacity(0.6),
          letterSpacing: 1,
        ),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.title,
    this.subtitle,
    this.onTap,
    this.iconColor,
    this.enabled = true,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final Color? iconColor;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled ? onTap : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          enabled: enabled,
          leading: Icon(
            icon,
            color: iconColor ?? const Color(0xFF1B3A5C),
          ),
          title: Text(
            title,
            style: TextStyle(
              color: enabled ? null : Colors.grey,
            ),
          ),
          subtitle: subtitle != null
              ? Text(
                  subtitle!,
                  style: TextStyle(
                    color: enabled ? Colors.grey.shade600 : Colors.grey,
                  ),
                )
              : null,
          trailing: enabled
              ? Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade400,
                )
              : null,
        ),
      ),
    );
  }
}
