import 'package:flutter/material.dart';

import 'otp_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const routeName = '/forgot-password-screen';
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 250,
              child: Text(
                'Please enter your email below to receive your password reset instructions',
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Enter Email or Phone Number'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, OTPScreen.routeName),
                child: const Text('Send code'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
