import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils.dart';
import 'PhoneScreen.dart';
import 'SignInScreen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    emailEditingController.addListener(_updateButtonStatus);
    passwordEditingController.addListener(_updateButtonStatus);
  }

  @override
  void dispose() {
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.dispose();
  }

  void _updateButtonStatus() {
    setState(() {
      _isButtonEnabled = emailEditingController.text.isNotEmpty &&
          passwordEditingController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390.0000915527;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          height: 860 * fem,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 390 * fem,
                    height: 844 * fem,
                    child: Image.asset(
                      'assets/images/background.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 47 * fem,
                top: 294.0000152588 * fem,
                child: SizedBox(
                  width: 295 * fem,
                  height: 274 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 30 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 53,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                controller: emailEditingController,
                                decoration: const InputDecoration(
                                  suffixText: "Email",
                                  prefixIcon: Icon(Icons.email_outlined),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20 * fem,
                            ),
                            Container(
                              height: 53,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: TextField(
                                controller: passwordEditingController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.lock_open),
                                  //hintText: "Password",
                                  suffixText: 'Password',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20 * fem,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  4 * fem, 0 * fem, 4 * fem, 0 * fem),
                              width: double.infinity,
                              height: 38 * fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 60 * fem,
                                    top: 18 * fem,
                                    child: SizedBox(
                                      width: 160 * fem,
                                      height: 20 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 4 * fem, 0 * fem),
                                            child: Text(
                                              'and',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height:
                                                    1.6666666667 * ffem / fem,
                                                color: const Color(0x99ffffff),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Terms and Conditions',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.6666666667 * ffem / fem,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0 * fem,
                                    top: 0 * fem,
                                    child: SizedBox(
                                      width: 287 * fem,
                                      height: 20 * fem,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 4 * fem, 0 * fem),
                                            child: Text(
                                              'By clicking start, you agree to our',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height:
                                                    1.6666666667 * ffem / fem,
                                                color: const Color(0x99ffffff),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Privacy Policy',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.6666666667 * ffem / fem,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50 * fem,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            backgroundColor: _isButtonEnabled
                                ? Colors.blue
                                : const Color(0xff40404b),
                          ),
                          onPressed: _isButtonEnabled
                              ? () {
                                  Get.to(const PhoneScreen());
                                }
                              : null,
                          child: Center(
                            child: Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 62 * fem,
                top: 192.0000152588 * fem,
                child: Align(
                  child: SizedBox(
                    width: 267 * fem,
                    height: 50 * fem,
                    child: Text(
                      'Create account',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 34 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.4705882353 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 103 * fem,
                top: 604.0000152588 * fem,
                child: SizedBox(
                  width: 184 * fem,
                  height: 88 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const PhoneScreen());
                        },
                        child: SizedBox(
                          width: 48 * fem,
                          height: 48 * fem,
                          child: Image.asset(
                            'assets/images/facebook.png',
                            width: 48 * fem,
                            height: 48 * fem,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20 * fem,
                      ),
                      SizedBox(
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // orVi6 (1:1224)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 20 * fem),
                              child: Text(
                                'or',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.6666666667 * ffem / fem,
                                  color: const Color(0x99ffffff),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(const PhoneScreen());
                              },
                              child: SizedBox(
                                width: 48 * fem,
                                height: 48 * fem,
                                child: Image.asset(
                                  'assets/images/apple.png',
                                  width: 48 * fem,
                                  height: 48 * fem,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20 * fem,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const PhoneScreen());
                        },
                        child: SizedBox(
                          width: 48 * fem,
                          height: 48 * fem,
                          child: Image.asset(
                            'assets/images/google.png',
                            width: 48 * fem,
                            height: 48 * fem,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 76 * fem,
                top: 774.0000152588 * fem,
                child: SizedBox(
                  width: 238 * fem,
                  height: 20 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 10 * fem, 0 * fem),
                        child: Text(
                          'Already have an account?',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.4285714286 * ffem / fem,
                            color: const Color(0x99ffffff),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const SignInScreen());
                        },
                        child: Text(
                          'Sign In',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.4285714286 * ffem / fem,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 142 * fem,
                top: 40.0000152588 * fem,
                child: Container(
                  width: 107 * fem,
                  height: 107 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(112 * fem),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 107 * fem,
                      height: 107 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(112 * fem),
                        child: Image.asset(
                          'assets/images/pv logo 1.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
