import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants.dart';
import 'desktop/dashboard.desktop.dart';
import 'mobile/dashboard.mobile.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (isMobile(context)) {
      return const DashboardMobilePage();
    } else {
      return const DashboardDesktopPage();
    }
  }
}
