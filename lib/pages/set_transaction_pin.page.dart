import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zarapay/pages/desktop/set_transaction_pin.desktop.dart';
import 'package:zarapay/pages/mobile/set_transaction_pin.mobile.dart';

import '../constants.dart';

class SetTransactionPage extends ConsumerWidget {
  const SetTransactionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (isMobile(context)) {
      return const SetTransactionMobile();
    } else {
      return const SetTransactionDesktop();
    }
  }
}
