import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/homepage.drawer.dart';
import '../../widgets/homepagebody.dart';

class HomeDesktopPage extends ConsumerWidget {
  const HomeDesktopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: screenWidth > 850 ? null : const HomeSidebarMenu(),
      appBar: AppBar(
        toolbarHeight: 100.0,
        title: const Text('Zara Pay'),
        actions: screenWidth < 850
            ? [const Text('')]
            : [
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
                )
              ],
      ),
      body: const HomePageBody(),
    );
  }

  TextStyle _buttonTextStyle() {
    return const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 22.0,
    );
  }

  Widget _buildHoverableButton(String label, {VoidCallback? onPressed}) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        height: 40.0,
        margin: const EdgeInsets.only(top: 10.0),
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.yellowAccent; // Yellow background on hover
                }
                return Colors.transparent; // Transparent background by default
              },
            ),
          ),
          child: Text(
            label,
            style: _buttonTextStyle(),
          ),
        ),
      ),
    );
  }
}

Widget _buildHoverablePayBillsButton() {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: Container(
      height: 40.0,
      width: 110.0, // Set a minimum height for all buttons
      margin:
          const EdgeInsets.only(top: 10.0), // Add top margin to create spacing
      child: TextButton(
        onPressed: () {
          // Handle the "Pay Bills" action
          // You can navigate to a Pay Bills screen or show a dialog, etc.
          print('Pay Bills pressed');
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return const Color.fromARGB(
                  255, 21, 94, 23); // Dark green background on hover
            }
            return Colors.green; // Regular green background by default
          },
        )),
        child: const Text(
          'Pay Bills',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
