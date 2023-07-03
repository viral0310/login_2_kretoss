import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390.0000915527;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xe5000000),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/planet vegan burgers 2.png',
              ),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 8 * fem),
                  width: 375 * fem,
                  height: 40 * fem,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      27 * fem, 0 * fem, 100 * fem, 66 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 57.85 * fem, 0 * fem),
                        width: 15.15 * fem,
                        height: 25 * fem,
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            'assets/images/back arrow.png',
                            width: 15.15 * fem,
                            height: 25 * fem,
                          ),
                        ),
                      ),
                      Text(
                        'Payment',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 2.1041666667 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      47 * fem, 0 * fem, 250 * fem, 0 * fem),
                  child: Text(
                    'Credit Cards',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff979797),
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
                  padding: EdgeInsets.fromLTRB(
                      55 * fem, 21 * fem, 24 * fem, 5.5 * fem),
                  width: double.infinity,
                  height: 62 * fem,
                  decoration: const BoxDecoration(
                    color: Color(0xff0e0d0d),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 214 * fem, 0 * fem),
                        width: 62 * fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 62 * fem,
                                  height: 20 * fem,
                                  child: Text(
                                    'Visa 4608',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.6666666667 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0 * fem,
                              top: 15.5 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 31 * fem,
                                  height: 20 * fem,
                                  child: Text(
                                    'Default',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 2.5 * ffem / fem,
                                      color: const Color(0xff979797),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 14.5 * fem),
                        width: 35 * fem,
                        height: 15 * fem,
                        decoration: const BoxDecoration(
                          color: Color(0xffd9d9d9),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/visa.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0 * fem,
                  top: 0 * fem,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          57 * fem, 21 * fem, 57 * fem, 21 * fem),
                      width: 390 * fem,
                      height: 62 * fem,
                      decoration: const BoxDecoration(
                        color: Color(0xff0e0d0d),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.add_circle_outline,
                              color: Colors.blue,
                            ),
                            Text(
                              'Add credit card',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 2 * ffem / fem,
                                color: const Color(0xff979797),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
