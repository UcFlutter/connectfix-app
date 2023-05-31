// This file is the starting point of the application i used a named route for navigation
import 'package:flutter/material.dart';

import 'screens/T&C/service_provider_terms.dart';
import 'screens/signup_section/as_service_provider/create_account_as_service_provider.dart';
import 'screens/signup_section/as_service_provider/create_service_account_section_two.dart';
import 'screens/signup_section/as_user/create_account_as_user_section_3.dart';
import 'screens/forgot_password_section/create_new_password_screen.dart';
import 'screens/get_started_screen.dart';
import 'screens/forgot_password_section/otp_screen.dart';
import 'screens/dashboards/service_provider_dashboard/service_provider_dashnoard.dart';
import 'screens/signup_section/as_service_provider/create_account_as_service_provider_3.dart';
import 'screens/signup_section/as_user/create_account_as_user.dart';
import 'screens/signup_section/as_user/create_account_as_user_section_2.dart';
import 'screens/verification_screens/service_provider_verification_screen.dart';
import 'screens/signup_section/sign_up_section.dart';
import 'screens/forgot_password_section/forgot_password_screen.dart';
import 'screens/signing_section/as_service_provider/login_as_service_provider.dart';
import 'screens/signing_section/as_user/login_as_user_screen.dart';
import 'screens/signing_section/signing_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/forgot_password_section/success_screen.dart';
import 'screens/T&C/user_terms_condition_screen.dart';
import 'screens/dashboards/user_dashboard/user_dashboard.dart';
import 'screens/verification_screens/user_verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  MaterialColor buildMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: buildMaterialColor(const Color(0xFF6169D2)),
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
      home: const SplashScreen(),
      routes: {
        GetStarted.routeName: (context) => const GetStarted(),
        SigningScreen.routeName: (context) => const SigningScreen(),
        LoginUserScreen.routeName: (context) => const LoginUserScreen(),
        UserDashBoard.routeName: (context) => UserDashBoard(),
        LoginServiceScreen.routeName: (context) => const LoginServiceScreen(),
        ForgotPasswordScreen.routeName: (context) =>
            const ForgotPasswordScreen(),
        OTPScreen.routeName: (context) => const OTPScreen(),
        CreateNewPassword.routeName: (context) => const CreateNewPassword(),
        SuccessScreen.routeName: (context) => const SuccessScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        CreateUserAccount.routeName: (context) => const CreateUserAccount(),
        CreateUserAccountSectionTwo.routeName: (context) =>
            const CreateUserAccountSectionTwo(),
        CreateAccountSectionThree.routeName: (context) =>
            const CreateAccountSectionThree(),
        UserTermsAndConditionScreen.routeName: (context) =>
            const UserTermsAndConditionScreen(),
        ServiceProviderTermsAndConditionScreen.routeName: (context) =>
            const ServiceProviderTermsAndConditionScreen(),
        UserVerificationScreen.routeName: (context) =>
            const UserVerificationScreen(),
        ServiceProviderVerificationScreen.routeName: (context) =>
            const ServiceProviderVerificationScreen(),
        CreateServiceProviderAccount.routeName: (context) =>
            const CreateServiceProviderAccount(),
        CreateServiceAccountSectionTwo.routeName: (context) =>
            const CreateServiceAccountSectionTwo(),
        CreateAccountAsServiceProviderThree.routeName: (context) =>
            const CreateAccountAsServiceProviderThree(),
        ServiceProviderDashboard.routeName: (context) =>
            const ServiceProviderDashboard(),
      },
    );
  }
}
