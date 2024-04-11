import 'package:flutter/material.dart';

import '../constants.dart';

class TransactionItem extends StatelessWidget {
  final String title;
  final String date;
  final String amount;
  final String transactionImage;
  const TransactionItem(
      {super.key,
      this.title = '',
      this.amount = '0',
      this.date = '',
      this.transactionImage = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(transactionImage),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title.length <= 12 ? title : "${title.substring(0, 12)}...",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                formatISODate(date),
                style: const TextStyle(fontSize: 12, color: Colors.black54),
              )
            ],
          ),
          const Expanded(child: Text('')),
          Text(
            amount,
            style: const TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
