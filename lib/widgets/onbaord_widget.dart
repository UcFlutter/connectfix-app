import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../screens/get_started_screen.dart';

class OnboardWidget extends StatefulWidget {
  const OnboardWidget({
    super.key,
    required PageController controller,
    required this.imageUrl,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.screenDetails,
    required this.isLastPage,
  }) : _controller = controller;

  final String imageUrl;
  final String title;
  final String subtitle;
  final PageController _controller;
  final IconData icon;
  final List screenDetails;
  final bool isLastPage;

  @override
  State<OnboardWidget> createState() => _OnboardWidgetState();
}

class _OnboardWidgetState extends State<OnboardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            widget.imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.only(top: 50),
            child: Icon(
              widget.icon,
              size: 100,
              color: Colors.white,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SmoothPageIndicator(
                controller: widget._controller,
                count: widget.screenDetails.length,

                // axisDirection: ,
                effect: const ExpandingDotsEffect(),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.1,
                child: widget.isLastPage
                    ? ElevatedButton(
                        onPressed: () => Navigator.pushReplacementNamed(
                            context, GetStarted.routeName),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                        child: const Text('NEXT'),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          widget._controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                        child: const Text('NEXT'),
                      ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
