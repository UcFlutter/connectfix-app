import 'package:connect_fix_app/screens/forgot_password_section/forgot_password_screen.dart';
import 'package:flutter/material.dart';

import '../../dashboards/user_dashboard/user_dashboard.dart';

class LoginServiceScreen extends StatelessWidget {
  static const routeName = '/login-as-service-provider-screen';
  const LoginServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.ac_unit,
                color: Theme.of(context).primaryColor,
                size: 50,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome Back',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const Text(
                'Sign in into your account',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text('Phone number or email'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: const Text('Password'),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove_red_eye_outlined)),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                    onPressed: () => Navigator.pushNamed(
                        context, ForgotPasswordScreen.routeName),
                    child: const Text(
                      'Forgot Password?',
                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.07,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(
                      context, UserDashBoard.routeName),
                  child: const Text('Sign In'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      // textAlign: TextAlign.center,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
