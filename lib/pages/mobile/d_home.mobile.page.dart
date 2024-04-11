import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zarapay/widgets/appbar_title.dart';

import '../../widgets/bill_category_item.dart';
import '../../widgets/transaction_item.dart';

class DHomeMobilePage extends ConsumerWidget {
  const DHomeMobilePage({super.key});
  final balance = 120000.96;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(6.0),
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          // centerTitle: true,
          title: const AppBarTitle(
            title: 'Hi, Stanley',
            fontSize: 14.0,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.help,
                color: Theme.of(context).primaryColor,
              ),
              style: IconButton.styleFrom(
                  // foregroundColor: Theme.of(context).secondaryHeaderColor,
                  // backgroundColor: Theme.of(context).primaryColor
                  ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Nigerian Naira',
                      style: TextStyle(color: Colors.lightGreen),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '#$balance',
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_upward),
                        label: const Text('Transfer')),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Fund Wallet'))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  BillCategoryItem(),
                  BillCategoryItem(
                    title: 'Internet',
                    icon: Icons.wifi,
                  ),
                  BillCategoryItem(
                    title: 'TV',
                    icon: Icons.tv,
                  ),
                  BillCategoryItem(
                    title: 'Electricity',
                    icon: Icons.lightbulb_outline,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        // color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Transactions'),
                            TextButton(
                                onPressed: () {}, child: const Text('View All'))
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      TransactionItem(
                          transactionImage: 'assets/backgr.jpg',
                          title: 'Airtime purchase',
                          date: DateTime.now().toIso8601String(),
                          amount: '-N1,000.00'),
                      const Divider(
                        thickness: 2,
                      ),
                      TransactionItem(
                          transactionImage: 'assets/backgr.jpg',
                          title: 'Data purchase',
                          date: DateTime.now().toIso8601String(),
                          amount: '-N30,000.00'),
                      const Divider(
                        thickness: 2,
                      ),
                      TransactionItem(
                          transactionImage: 'assets/gogleicon.png',
                          title: 'Nwaegwu Joel Stanley',
                          date: DateTime.now().toIso8601String(),
                          amount: '+N45,000.00'),
                      const Divider(
                        thickness: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
