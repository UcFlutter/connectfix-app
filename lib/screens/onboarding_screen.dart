// This screen contains the onboarding screen.

import 'package:flutter/material.dart';

import '../widgets/onbaord_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // This are the items to be displayed on the onboarding screen
  final List screenDetails = [
    {
      'icon': Icons.ac_unit,
      'urlImage': 'assets/images/emmanuel-ikwuegbu-xdS9XEoKBLY-unsplash 1.png',
      'title': 'Quick Service Delivery',
      'subtitle': 'Simplify Your Life With Our Home Service Solutions'
    },
    {
      'icon': Icons.ac_unit,
      'urlImage':
          'assets/images/african-american-woman-preparing-healthy-food-home-kitchen-she-washes-products-washbasin 1.png',
      'title': 'Happy Home Service',
      'subtitle': 'Transforming Your Home, One Service At A Time'
    },
  ];

  final _controller = PageController();
  bool _isLastPage = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            _isLastPage = value == 1;
          });
        },
        controller: _controller,
        itemCount: screenDetails.length,
        itemBuilder: (context, index) {
          // The OnboardWidget displays how the onboard widget should be displayed
          // It can be found in the widgets folder.
          return OnboardWidget(
            isLastPage: _isLastPage,
            screenDetails: screenDetails,
            imageUrl: screenDetails[index]['urlImage'],
            icon: screenDetails[index]['icon'],
            title: screenDetails[index]['title'],
            subtitle: screenDetails[index]['subtitle'],
            controller: _controller,
          );
        },
      ),
    );
  }
}
