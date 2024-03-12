import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical:  20.0,horizontal: 8),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width / 1.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const FlutterLogo(
                //   size: 80.0,
                // ),
                const Text(
                  'ZaraPay',
                  style: TextStyle(fontSize: 32, color: Colors.black),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0),
                _buildTextField(
                    'Email', 'Enter your phone number or email', Icons.email),
                const SizedBox(height: 10.0),
                _buildTextField('Password', 'Enter your password', Icons.lock,
                    isPassword: true),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {
                        // ref.read(isPasswordProvider);
                      },
                      child: const Text('Forgot password')),
                ),
                const SizedBox(height: 20.0),

                SizedBox(
                  width: 150,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement login logic
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      // padding:
                      // const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                    ),
                    child: const Text('Login',style: TextStyle(fontSize: 18)),
                  ),
                ),
                const SizedBox(height: 10.0),

                const SizedBox(height: 10.0),
                TextButton(
                  onPressed: () {
                    // Implement registration logic
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: const Text('Don\'t have an account? Register here'),
                ),
              ],
            ),
          ),
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
        // constraints: const BoxConstraints(maxWidth: 400),
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
