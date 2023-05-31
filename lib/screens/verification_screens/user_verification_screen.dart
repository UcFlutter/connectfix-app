import 'dart:async';

import 'package:connect_fix_app/screens/dashboards/service_provider_dashboard/service_provider_dashnoard.dart';
import 'package:flutter/material.dart';

import '../dashboards/user_dashboard/user_dashboard.dart';

class UserVerificationScreen extends StatefulWidget {
  static const routeName = '/user-verification-screen';
  const UserVerificationScreen({super.key});

  @override
  State<UserVerificationScreen> createState() => _UserVerificationScreen();
}

class _UserVerificationScreen extends State<UserVerificationScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      setState(() {
        isVerified = true;
      });
      Navigator.pushNamed(context, UserDashBoard.routeName);
    });

    super.initState();
  }

  bool isVerified = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isVerified
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Verification',
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
              )
            : Container(
                height: 100,
                width: 300,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor,
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                      'Your verification process is ongoing it would take 24hrs  to verify.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        // fontSize: 18,
                      )),
                ),
              ),
      ),
    );
  }
}
