import 'package:flutter/material.dart';

class SetTransactionMobile extends StatefulWidget {
  const SetTransactionMobile({Key? key}) : super(key: key);

  @override
  _SetTransactionMobileState createState() => _SetTransactionMobileState();
}

class _SetTransactionMobileState extends State<SetTransactionMobile> {
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;
  late List<FocusNode> confirmFocusNodes;
  final PageController _pageController = PageController();
  // Track the current page index
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();

    controllers = List.generate(4, (index) => TextEditingController());
    focusNodes = List.generate(4, (index) => FocusNode());
    confirmFocusNodes =
        List.generate(4, (index) => FocusNode(skipTraversal: true));
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    for (var confirmFocusNode in confirmFocusNodes) {
      confirmFocusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Transaction PIN'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        children: [
          buildFirstPage(),
          buildConfirmationPage(),
        ],
      ),
    );
  }

  Widget buildFirstPage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Zara Pay',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Secure your transaction with a PIN',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'The PIN is used to verify every transactions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    controller: controllers[index],
                    focusNode: focusNodes[index],
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        if (index < 3) {
                          FocusScope.of(context)
                              .requestFocus(focusNodes[index + 1]);
                        } else {
                          // All inputs have values, move to confirmation page
                          setState(() {
                            currentPageIndex = 1;
                          });
                        }
                      }
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 40.0,
            ),
            TextButton(
                onPressed: () {
                  print('move to confirmation page');
                  setState(() {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  });
                },
                child: const Text('Confirm your PIN'))
          ],
        ),
      ),
    );
  }

  Widget buildConfirmationPage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Confirm Transaction PIN',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    focusNode: confirmFocusNodes[index],
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        if (index < 3) {
                          FocusScope.of(context)
                              .requestFocus(confirmFocusNodes[index + 1]);
                        } else {
                          // All inputs have values, return to the first page
                          setState(() {
                            currentPageIndex = 0;
                          });
                        }
                      }
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 40.0,
            ),
            TextButton(
                onPressed: () {
                  print('set pin');
                  Navigator.pushNamed(context, '/dashboard');
                },
                child: const Text('Set PIN'))
          ],
        ),
      ),
    );
  }
}
