import 'dart:ui';

import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 500.0,
            decoration: const BoxDecoration(
              // Set the background image
              image: DecorationImage(
                image:
                    AssetImage('backgr.jpg'), // Replace with your image asset
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.6,
                        child: const Text(
                          'Your Bill Payment Made Easy.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: const Text(
                        'Simplify your bill payment and management at your convenience.with our intuitive easy to use digital platform crafted per excellence',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Wrap(
                      children: [
                        const TextField(
                          autofocus: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              constraints: BoxConstraints(maxWidth: 300),
                              labelText: 'Phone Number',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              hintText: 'Enter your phone number'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: const ButtonStyle(),
                            onPressed: () {
                              // Handle button press
                            },
                            child: const Text('Get Started'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: const Row(
              children: [
                Text(
                  'Our Service Partners',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('list of partners')
              ],
            ),
          )
        ],
      ),
    );
  }
}
