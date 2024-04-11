import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zarapay/pages/aboutus.page.dart';
import 'package:zarapay/pages/bills.page.dart';
import 'package:zarapay/pages/commissions.page.dart';
import 'package:zarapay/pages/contactus.page.dart';
import 'package:zarapay/pages/dashboard.page.dart';
import 'package:zarapay/pages/emailverification.page.dart';
import 'package:zarapay/pages/error.page.dart';
import 'package:zarapay/pages/home.page.dart';
import 'package:zarapay/pages/pay.page.dart';
import 'package:zarapay/pages/profile.page.dart';
import 'package:zarapay/pages/set_transaction_pin.page.dart';
import 'package:zarapay/pages/signup.page.dart';
import 'package:zarapay/pages/transactions.page.dart';
import 'package:zarapay/pages/unknownroute.page.dart';

import 'pages/login.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zara Pay',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      // home: const HomePage(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/bills': (context) => const BillsPage(),
        '/commission': (context) => const CommissionPage(),
        '/error': (context) => const ErrorPage(),
        '/pay': (context) => const PayPage(),
        '/profile': (context) => const ProfilePage(),
        '/signup': (context) => SignupPage(),
        '/transactions': (context) => const TransactionsPage(),
        '/contactus': (context) => const ContactusPage(),
        '/aboutus': (context) => const AboutusPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/verify-email': (context) => const EmailVerificationPage(),
        '/setpin': (context) => const SetTransactionPage()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const UnknownRoutePage(),
        );
      },
    ));
  }
}
