import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zarapay/constants.dart';
import 'package:zarapay/pages/desktop/home.desktop.page.dart';
import 'package:zarapay/pages/mobile/home.mobile.page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (isMobile(context)) {
      return HomeMobilePage();
    } else {
      return const HomeDesktopPage();
    }
  }
}
