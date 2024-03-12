import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants.dart';
import 'desktop/d_home.desktop.page.dart';
import 'mobile/d_home.mobile.page.dart';

class DHomePage extends ConsumerWidget {
  const DHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (isMobile(context)) {
      return const DHomeMobilePage();
    } else {
      return const DHomeDesktopPage();
    }
  }
}
