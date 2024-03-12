import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignupPage extends ConsumerWidget {
  final isPasswordProvider = Provider<bool>((ref) => false);

  SignupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var obscure = ref.watch(isPasswordProvider);
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100.0,
          ),
          const Text(
            'ZaraPay',
            style: TextStyle(fontSize: 32, color: Colors.black),
          ),
          const Text(
            'Create a new account',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Create an account to join ZaraPay',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 2.2,
                child: const TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                  prefixIcon: Icon(Icons.person_2),
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  hintText: 'Enter your first name',
                )),
              ),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 2.2,
                child: const TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // constraints: BoxConstraints(maxWidth: 400),
                  labelText: 'Last Name',
                  prefixIcon: Icon(Icons.person_2),
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  hintText: 'Enter your last name',
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              constraints: BoxConstraints(maxWidth: 400),
              labelText: 'Email',
              // label: const Text('Email'),
              prefixIcon: Icon(Icons.email),
              hintStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              hintText: 'Enter your email',
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                obscureText: obscure,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  constraints: const BoxConstraints(maxWidth: 400),
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.password),
                  suffix: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.remove_red_eye)),
                  hintStyle: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  hintText: 'Enter your password',
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {
                  // ref.read(isPasswordProvider);
                },
                child: const Text('Forgot password')),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/verify-email');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
            ),
            child: const Text(
              'Create Account',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      )),
    );
  }
}
