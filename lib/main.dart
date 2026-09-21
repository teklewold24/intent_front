import 'package:flutter/material.dart';
import 'package:intent/screen/landing_page.dart';
import 'package:intent/screen/login_page.dart';
import 'package:intent/screen/signup_page.dart';
import 'package:intent/screen/verification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LandingPage(),
      routes: {
        '/landing': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/verification': (context) => const VerificationPage(),
      },
    );
  }
}
