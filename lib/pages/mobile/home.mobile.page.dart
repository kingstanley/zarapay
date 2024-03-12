import 'package:flutter/material.dart';

class HomeMobilePage extends StatelessWidget {
  final PageController _pageController = PageController();

  HomeMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          buildStepWidget(
            context,
            image: const AssetImage('assets/backgr.jpg'),
            title: 'Simplify your bill payment',
            description: 'Effortlessly pay your bills with just a few taps',
          ),
          buildStepWidget(
            context,
            image: const AssetImage('assets/backgr.jpg'),
            title: 'Fast, Secure, Covenient Payments',
            description:
                'Experience ligtening fast transactions, Ultimost Security and unmatched convenience with ZaraPay',
          ),
          // buildStepWidget(
          //   context,
          //   image: const AssetImage('/assets/backgr.jpg'),
          //   description: 'Step 3: Description text here',
          //   isLastStep: true,
          // ),
          buildLoginPageWidget(context),
        ],
      ),
    );
  }

  Widget buildStepWidget(
    BuildContext context, {
    required ImageProvider<Object> image,
    required String description,
    bool isLastStep = false,
    required String title,
  }) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 1.2,
            height: 300.0,
            child: Image(
              image: image,
              width: MediaQuery.of(context).size.width * 0.8,
              height: 300.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: const TextStyle(fontSize: 22.0),
            ),
          ),
          const SizedBox(height: 10.0),
          if (!isLastStep)
            ElevatedButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(22.0),
              ),
              child: const Icon(Icons.arrow_forward),
            ),
        ],
      ),
    );
  }

  Widget buildLoginPageWidget(BuildContext context) {
    // Customize the login page widget according to your requirements
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width / 1.1,
          child: Column(children: [
            // const SizedBox(
            //   height: 10,
            // ),
            const Text(
              'ZaraPay',
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 100.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      vertical: 22.0, horizontal: 120),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: const Text('Sign Up')),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(
                      vertical: 22.0, horizontal: 120),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text('Login')),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70.0,
                  child: Divider(
                    height: 4,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('or continue with'),
                SizedBox(
                  width: 10.0,
                ),
                SizedBox(
                    width: 70, child: Divider(height: 4, color: Colors.grey))
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Image(image: AssetImage('assets/gogleicon.png'))),
                const SizedBox(
                  width: 50.0,
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.facebook_rounded)),
                const SizedBox(
                  width: 50.0,
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.apple_rounded)),
              ],
            )
          ]),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hintText, IconData icon,
      {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        // constraints: const BoxConstraints(minWidth: 300, maxWidth: 600),
        labelText: label,
        prefixIcon: Icon(icon),
        hintStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        hintText: hintText,
      ),
    );
    // decoration: InputDecoration(
    //   labelText: label,
    //   prefixIcon: Icon(icon),
    //   border: const OutlineInputBorder(),
    // ),
  }
}
