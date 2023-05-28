import 'package:connect_fix_app/screens/signup_section/as_service_provider/create_account_as_service_provider.dart';
import 'package:flutter/material.dart';

import 'as_user/create_account_as_user.dart';
import '../signing_section/as_service_provider/login_as_service_provider.dart';
import '../signing_section/as_user/login_as_user_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/create-screen';
  const SignUpScreen({super.key});

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
            const CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.08,
              child: ElevatedButton(
                onPressed: () => Navigator.pushReplacementNamed(
                    context, CreateUserAccount.routeName),
                child: const Text('USER'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.08,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                onPressed: () => Navigator.pushNamed(
                  context,
                  CreateServiceProviderAccount.routeName,
                ),
                child: const Text('SERVICE PROVIDER'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
