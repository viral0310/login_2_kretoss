import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Screens/HomePage.dart';
import 'package:myapp/Screens/PhoneScreen.dart';

import 'Screens/CreateAccountScreen.dart';
import 'Screens/SignInScreen.dart';
import 'Screens/Verificationscreen.dart';
import 'Screens/WlcomePage.dart';

void main() async {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const WelcomePage(),
        'CreateAccount': (context) => const CreateAccountScreen(),
        'PhoneScreen': (context) => const PhoneScreen(),
        'SignInScreen': (context) => const SignInScreen(),
        'VerificationScreen': (context) => const VerificationScreen(),
        'HomePage': (context) => const HomePage(),
      },
    ),
  );
}
