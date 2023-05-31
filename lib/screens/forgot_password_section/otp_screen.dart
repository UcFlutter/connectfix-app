import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';

import 'create_new_password_screen.dart';

class OTPScreen extends StatelessWidget {
  static const routeName = '/otp-screen';
  const OTPScreen({super.key});

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
              'Enter OTP',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 250,
              child: Text(
                'We have sent a code to your phone number, please check and enter the code below.',
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width * 1,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              // fieldStyle: FieldStyle.box,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 32,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Didn\'t receive a code?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Resend Code'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, CreateNewPassword.routeName),
                child: const Text('Submit Code'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
