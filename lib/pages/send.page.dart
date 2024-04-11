import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zarapay/widgets/appbar_title.dart';
import 'package:zarapay/widgets/transaction_item.dart';

import '../constants.dart';
import '../model/beneficiary.dart';

class SendPage extends ConsumerWidget {
  SendPage({super.key});
  final transactions = [
    {
      'title': 'Joel Stanley',
      'transactionImage': 'assets/backgr.jpg',
      'date': DateTime.now().toIso8601String(),
      'amount': '+N328339'
    },
    {
      'title': 'Njideka Amadi',
      'transactionImage': 'assets/backgr.jpg',
      'date': DateTime.now().toIso8601String(),
      'amount': '+N328339'
    },
    {
      'title': 'Emeka Nwakanma',
      'transactionImage': 'assets/backgr.jpg',
      'date': DateTime.now().toIso8601String(),
      'amount': '+N328339'
    },
    {
      'title': 'Joseph Awunri',
      'transactionImage': 'assets/backgr.jpg',
      'date': DateTime.now().toIso8601String(),
      'amount': '+N328339'
    },
    {
      'title': 'Kenneth Nwachuckwu',
      'transactionImage': 'assets/backgr.jpg',
      'date': DateTime.now().toIso8601String(),
      'amount': '+N328339'
    },
    {
      'title': 'Joshua Silas',
      'transactionImage': 'assets/backgr.jpg',
      'date': DateTime.now().toIso8601String(),
      'amount': '+N328339'
    }
  ];
  final beneficiaries = [
    Beneficiary(
      "Alice",
      "Bank A",
      123456,
    ),
    Beneficiary(
      "Bob",
      "Bank B",
      789012,
    ),
    Beneficiary(
      "Charlie",
      "Bank C",
      345678,
    ),
    Beneficiary(
      "Charlie",
      "Bank C",
      345678,
    ),
    Beneficiary(
      "Stanley Joel",
      "Bank C",
      345678,
    ),
    Beneficiary(
      "Vivian John",
      "Bank C",
      345678,
    ),
    Beneficiary(
      "Wisdom Ajoke",
      "Bank C",
      345678,
    ),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(''),
        title: const AppBarTitle(title: 'Transfer Money'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: 'Search for anything',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search)),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Beneficiaries',
                style: TextStyle(color: Color.fromARGB(255, 30, 29, 27)),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BeneficiaryListItem(beneficiary: beneficiaries[0]),
                    BeneficiaryListItem(beneficiary: beneficiaries[1]),
                    BeneficiaryListItem(beneficiary: beneficiaries[2]),
                    BeneficiaryListItem(beneficiary: beneficiaries[3]),
                    BeneficiaryListItem(beneficiary: beneficiaries[4]),
                    BeneficiaryListItem(beneficiary: beneficiaries[5]),
                    BeneficiaryListItem(beneficiary: beneficiaries[6]),
                    BeneficiaryListItem(beneficiary: beneficiaries[2]),
                    BeneficiaryListItem(beneficiary: beneficiaries[0]),
                    BeneficiaryListItem(beneficiary: beneficiaries[1])
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.compare_arrows),
                      label: const Text('Zara Pay')),
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_outward_outlined),
                      label: const Text('Other Banks'))
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
                      const Divider(thickness: 2),
                      ListView.separated(
                        shrinkWrap: true,
                        itemCount: transactions.length,
                        itemBuilder: (context, index) {
                          final transaction = transactions[index];
                          return TransactionItem(
                            transactionImage: transaction['transactionImage']!,
                            title: transaction['title']!,
                            date: transaction['date']!,
                            amount: transaction['amount']!,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider(thickness: 2);
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BeneficiaryListItem extends StatelessWidget {
  final Beneficiary beneficiary;

  const BeneficiaryListItem({super.key, required this.beneficiary});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // label: Text(''),
      onPressed: () =>
          {print('name of beneficiary: ${beneficiary.name.toString()}')},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: generateColor(beneficiary.name),
              child: Text(
                beneficiary.name[0].toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            Text(beneficiary.name),
            // Text('Bank: ${beneficiary.bank}'),
            // Text('Account Number: ${beneficiary.accountNumber}'),
          ],
        ),
      ),
    );
  }
}
