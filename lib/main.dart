import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Screens/HomePage.dart';
import 'package:myapp/Screens/PhoneScreen.dart';

import 'Screens/ContactUs.dart';
import 'Screens/CreateAccountScreen.dart';
import 'Screens/MyInformation.dart';
import 'Screens/PastOrder.dart';
import 'Screens/SignInScreen.dart';
import 'Screens/Verificationscreen.dart';
import 'Screens/WlcomePage.dart';
import 'Screens/payment.dart';

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
        'MyInformation': (context) => const MyInformation(),
        'PastOrder': (context) => const PastOrder(),
        'Payment': (context) => const Payment(),
        'ContactUs': (context) => const ContactUs(),
      },
    ),
  );
}
