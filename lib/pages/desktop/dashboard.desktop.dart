import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardDesktopPage extends ConsumerWidget {
  const DashboardDesktopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(child: Text('Desktop Dashboard'));
  }
}
