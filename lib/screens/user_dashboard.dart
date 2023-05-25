import 'package:flutter/material.dart';

class UserDashBoard extends StatelessWidget {
  static const routeName = '/user-dashboard';
  const UserDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('DASHBOARD'),
      ),
    );
  }
}
