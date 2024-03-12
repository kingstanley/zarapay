import 'package:flutter/material.dart';

class HomeSidebarMenu extends StatelessWidget {
  const HomeSidebarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Text(
              'Zara Pay',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          _buildHoverableButton(
            'About Us',
            onPressed: () {
              // Handle the "About Us" action
              print('About Us pressed');
              Navigator.pushNamed(context, '/aboutus');
            },
          ),
          const SizedBox(
            width: 10,
          ),
          _buildHoverableButton(
            'Contact Us',
            onPressed: () {
              // Handle the "Contact Us" action
              print('Contact Us pressed');
              Navigator.pushNamed(context, '/contactus');
            },
          ),
          const SizedBox(
            width: 10,
          ),
          _buildHoverableButton(
            'Purchase Commission',
            onPressed: () {
              // Handle the "Purchase Commission" action
              print('Purchase Commission pressed');
              Navigator.pushNamed(context, '/signup');
            },
          ),
          const SizedBox(
            width: 10,
          ),
          _buildHoverablePayBillsButton(),
          const SizedBox(
            width: 100.0,
          ),
        ],
      ),
    );
  }
}

Widget _buildHoverableButton(String label, {VoidCallback? onPressed}) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: SizedBox(
      height: 40.0,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return Colors.yellow; // Yellow background on hover
              }
              return Colors.transparent; // Transparent background by default
            },
          ),
        ),
        child: Text(
          label,
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    ),
  );
}

Widget _buildHoverablePayBillsButton() {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: SizedBox(
      height: 40.0, // Set a minimum height for all buttons
      child: TextButton(
        onPressed: () {
          // Handle the "Pay Bills" action
          print('Pay Bills pressed');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return Colors.green; // Dark green background on hover
              }
              return Colors.transparent; // Transparent background by default
            },
          ),
        ),
        child: const Text(
          'Pay Bills',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
