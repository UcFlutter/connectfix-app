import 'package:connect_fix_app/screens/signup_section/as_user/create_account_as_user_section_3.dart';
import 'package:flutter/material.dart';

import '../verification_screens/service_provider_verification_screen.dart';

class ServiceProviderTermsAndConditionScreen extends StatelessWidget {
  static const routeName = '/service-terms-and-condition';
  const ServiceProviderTermsAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Terms and Condition',
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget se eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget sed eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget se eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget sed eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget se eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget sed eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget se eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget sed eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.',
                maxLines: 31,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                const Text('I agree to the terms and condition'),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(
                          context,
                          CreateAccountSectionThree.routeName,
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.66,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          ServiceProviderVerificationScreen.routeName,
                        );
                      },
                      child: const Text('Next'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
