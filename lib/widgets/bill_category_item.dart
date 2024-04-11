import 'package:flutter/material.dart';

class BillCategoryItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final double size;
  const BillCategoryItem(
      {super.key,
      this.title = 'AirTime',
      this.icon = Icons.call,
      this.size = 80.0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('$title bill clicked');
      },
      child: Card(
        child: SizedBox(
          width: size,
          height: size,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
