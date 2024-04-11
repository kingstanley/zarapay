import 'package:flutter/material.dart';

import '../d_home.page.dart';
import '../more_options.page.dart';
import '../pay.page.dart';
import '../send.page.dart';

class DashboardMobilePage extends StatefulWidget {
  const DashboardMobilePage({Key? key}) : super(key: key);

  @override
  _DashboardMobilePageState createState() => _DashboardMobilePageState();
}

class _DashboardMobilePageState extends State<DashboardMobilePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const DHomePage(),
    SendPage(),
    const PayPage(),
    const MoreOptionPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (_currentIndex != index) {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Column(
              children: [
                const Icon(Icons.home),
                Text(
                  'Home',
                  style: TextStyle(
                      fontWeight: _currentIndex == 0
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontSize: 12,
                      color: Colors.white,
                      backgroundColor: Colors.transparent),
                ),
              ],
            ), // const Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.send),
                Text(
                  'Transfer',
                  style: TextStyle(
                      fontWeight: _currentIndex == 1
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontSize: 12,
                      color: Colors.white,
                      backgroundColor: Colors.transparent),
                ),
              ],
            ), //Icon(Icons.send),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.payment),
                Text(
                  'Pay',
                  style: TextStyle(
                      fontWeight: _currentIndex == 2
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontSize: 12,
                      color: Colors.white,
                      backgroundColor: Colors.transparent),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.more_horiz),
                Text(
                  'More',
                  style: TextStyle(
                      fontWeight: _currentIndex == 3
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontSize: 12,
                      color: Colors.white,
                      backgroundColor: Colors.transparent),
                ),
              ],
            ), // Icon(Icons.more_horiz),
            label: '',
          ),
        ],
      ),
    );
  }

  String _getAppBarTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Send';
      case 2:
        return 'Pay';
      case 3:
        return 'More';
      default:
        return '';
    }
  }
}
