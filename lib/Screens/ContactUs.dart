import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390.0000915527;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff000000),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 120 * fem,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg 3.png'),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 126 * fem,
                      top: 50 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 136 * fem,
                          height: 36 * fem,
                          child: Text(
                            'Contact Us',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 850 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 30 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 39 * fem,
                          height: 39 * fem,
                          child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Image.asset(
                              'assets/images/back arrow.png',
                              width: 39 * fem,
                              height: 39 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0 * fem,
                      top: 35 * fem,
                      child: SizedBox(
                        width: 390 * fem,
                        height: 1163.21 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 0 * fem, 28 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 183 * fem,
                              ),
                              child: Text(
                                'Any question or remarks? Just write us a message!',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  40 * fem, 0 * fem, 40 * fem, 29 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  45.5 * fem, 15 * fem, 44.5 * fem, 24 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xff000000)),
                                borderRadius: BorderRadius.circular(5 * fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        1 * fem, 0 * fem, 0 * fem, 34 * fem),
                                    child: Text(
                                      'Contact Information',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        1 * fem, 0 * fem, 0 * fem, 24 * fem),
                                    width: 20 * fem,
                                    height: 16 * fem,
                                    child: const Icon(
                                      Icons.mail,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 1 * fem, 47.5 * fem),
                                    child: Text(
                                      'info@planetvegan.com',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 1 * fem, 15.5 * fem),
                                    width: 16.5 * fem,
                                    height: 21 * fem,
                                    child: const Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 23 * fem),
                                    constraints: BoxConstraints(
                                      maxWidth: 220 * fem,
                                    ),
                                    child: Text(
                                      '7825 N Palm Ave, Fresno, CA 93711',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30 * fem,
                                    height: 30 * fem,
                                    child: Image.asset(
                                      'assets/images/instagram.png',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  label: Text(
                                    'First Name',
                                    style: TextStyle(
                                      color: Color(0xFF979797),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 312,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 0.50,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  label: Text(
                                    'Last Name',
                                    style: TextStyle(
                                      color: Color(0xFF979797),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 312,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 0.50,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  label: Text(
                                    'Email',
                                    style: TextStyle(
                                      color: Color(0xFF979797),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 312,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 0.50,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  label: Text(
                                    'Phone Number',
                                    style: TextStyle(
                                      color: Color(0xFF979797),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 312,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 0.50,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF979797),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25, right: 25),
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                child: Expanded(
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: Colors.blue, width: 2),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text('Save'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
