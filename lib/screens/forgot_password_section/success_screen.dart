import 'dart:async';

import 'package:flutter/material.dart';

import '../../signing_section/signing_screen.dart';

class SuccessScreen extends StatefulWidget {
  static const routeName = '/success-screen';
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SigningScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Successful',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 100,
              child: Icon(
                Icons.check,
                size: 100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Your Verification process is successful')
          ],
        ),
      ),
    );
  }
}
