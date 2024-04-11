import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zarapay/widgets/appbar_title.dart';

import '../widgets/bill_category_item.dart';

class PayPage extends ConsumerWidget {
  const PayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Text(''),
        title: const AppBarTitle(
          title: 'Pay Bills',
        ),
      ),
      body: const Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 24.0,
          runSpacing: 24.0,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            BillCategoryItem(
              size: 100.0,
            ),
            BillCategoryItem(
              size: 100.0,
              title: 'Internet',
              icon: Icons.wifi,
            ),
            BillCategoryItem(
              size: 100.0,
              title: 'TV',
              icon: Icons.tv,
            ),
            BillCategoryItem(
              size: 100,
              title: 'Electricity',
              icon: Icons.lightbulb_outline,
            ),
            BillCategoryItem(
              size: 100,
              title: 'Subscription',
              icon: Icons.lightbulb_outline,
            ),
            BillCategoryItem(
              size: 100,
              title: 'DHL ',
              icon: Icons.lightbulb_outline,
            ),
            BillCategoryItem(
              size: 100,
              title: 'FIRES',
              icon: Icons.lightbulb_outline,
            ),
            BillCategoryItem(
              size: 100,
              title: 'ipNX',
              icon: Icons.lightbulb_outline,
            )
          ],
        ),
      ),
    );
  }
}
