import 'package:flutter/material.dart';

class ServiceProviderDashboard extends StatelessWidget {
  static const routeName = '/service-dashboard';
  const ServiceProviderDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('SERVICE PROVIDER DASHBOARD'),
      ),
    );
  }
}
