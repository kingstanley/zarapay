import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  final double fontSize;

  final FontWeight fontWeight;
  const AppBarTitle({
    this.title = 'ZaraPay',
    this.fontSize = 16,
    this.fontWeight = FontWeight.bold,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}
