import 'package:flutter/material.dart';

import 'success_screen.dart';

class CreateNewPassword extends StatelessWidget {
  static const routeName = '/create-new-password';
  const CreateNewPassword({super.key});

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
              'Create New Password',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const Text('Please enter your new password'),
            const SizedBox(
              height: 20,
            ),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        label: const Text('New Password'),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.remove_red_eye_outlined),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        label: const Text('Confirm New Password'),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.remove_red_eye_outlined),
                          onPressed: () {},
                        ),
                      ),
                    ),
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
                    Navigator.pushNamed(context, SuccessScreen.routeName),
                child: const Text('Confirm'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
