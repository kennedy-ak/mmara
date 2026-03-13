import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider for network connectivity status.
final networkStatusProvider = StreamProvider<List<ConnectivityResult>>((ref) {
  return Connectivity().onConnectivityChanged;
});

/// Banner widget showing network connectivity status.
class NetworkBanner extends ConsumerWidget {
  const NetworkBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectivityState = ref.watch(networkStatusProvider);

    return connectivityState.when(
      data: (results) {
        final isConnected = results.any((result) =>
            result == ConnectivityResult.wifi ||
            result == ConnectivityResult.ethernet ||
            result == ConnectivityResult.mobile);

        if (isConnected) {
          return const SizedBox.shrink();
        }

        return Container(
          color: const Color(0xFFBA1A1A),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              const Icon(
                Icons.wifi_off,
                color: Colors.white,
                size: 16,
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'No internet connection. Please check your network.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Dismiss the banner (temporarily)
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ],
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}

/// Wrapper to include network banner in screens.
class NetworkAwareScreen extends StatelessWidget {
  const NetworkAwareScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NetworkBanner(),
        Expanded(child: child),
      ],
    );
  }
}
