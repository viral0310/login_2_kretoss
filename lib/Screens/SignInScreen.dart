import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: NetworkImage(
              "https://searchengineland.com/wp-content/seloads/2020/03/google-404-error-screensnap.jpg"),
        ),
      ),
    );
  }
}
