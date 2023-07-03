import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Screens/ButtomNavigation.dart';
import 'package:myapp/Screens/ContactUs.dart';
import 'package:myapp/Screens/MyInformation.dart';
import 'package:myapp/Screens/PastOrder.dart';
import 'package:myapp/Screens/payment.dart';

import '../utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          decoration: const BoxDecoration(
            color: Color(0xe5000000),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/planet vegan burgers 2.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 8 * fem),
                width: 375 * fem,
                height: 40 * fem,
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(27 * fem, 0 * fem, 90 * fem, 34 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 47.85 * fem, 0 * fem),
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
                      ],
                    ),
                    Text(
                      'Profile & Settings',
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
                    143 * fem, 0 * fem, 142 * fem, 75 * fem),
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 7 * fem, 0 * fem, 0 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30 * fem),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 105 * fem,
                    height: 105 * fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(112 * fem),
                      child: Image.asset(
                        'assets/images/pv logo 1.png',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    54 * fem, 0 * fem, 53 * fem, 243.34 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 39 * fem),
                      child: SizedBox(
                        width: double.infinity,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(const MyInformation());
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 137 * fem, 0.22 * fem),
                                child: Text(
                                  'My Information',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.4285714286 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              SizedBox(
                                // vectorURL (74:613)
                                width: 11 * fem,
                                height: 16.22 * fem,
                                child: const Icon(Icons.arrow_forward_ios,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 39 * fem),
                      child: SizedBox(
                        width: double.infinity,
                        height: 20.22 * fem,
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: GestureDetector(
                            onTap: () {
                              Get.to(const PastOrder());
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 167 * fem, 0.22 * fem),
                                  child: Text(
                                    'Past Orders',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.4285714286 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  // vectorokS (74:617)
                                  width: 11 * fem,
                                  height: 16.22 * fem,
                                  child: const Icon(Icons.arrow_forward_ios,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 39 * fem),
                      child: SizedBox(
                        width: double.infinity,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(const Payment());
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 190 * fem, 0.22 * fem),
                                child: Text(
                                  'Payment',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.4285714286 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 11 * fem,
                                height: 16.22 * fem,
                                child: const Icon(Icons.arrow_forward_ios,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 20 * fem,
                      child: SizedBox(
                        // group70539BH8 (74:623)
                        width: double.infinity,
                        height: double.infinity,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(const ContactUs());
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 174 * fem, 0 * fem),
                                child: Text(
                                  'Contact Us',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.4285714286 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 11 * fem,
                                height: 16.22 * fem,
                                child: const Icon(Icons.arrow_forward_ios,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              /* Container(
                padding: EdgeInsets.fromLTRB(
                    25.5 * fem, 18 * fem, 29.5 * fem, 18 * fem),
                width: double.infinity,
                height: 83 * fem,
                decoration: const BoxDecoration(
                  color: Color(0xe50076fe),
                ),
                child: SizedBox(
                  // navbar9Wn (74:629)
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 42.5 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 3 * fem, 0 * fem, 0 * fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 3 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              child: Image.asset(
                                'assets/images/search.png',
                                width: 18 * fem,
                                height: 18 * fem,
                              ),
                            ),
                            Text(
                              'Explore',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // ordersGdL (74:638)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 53 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 1.2 * fem, 0 * fem, 0 * fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 1.2 * fem),
                              width: 35.93 * fem,
                              height: 21.61 * fem,
                              child: Image.asset(
                                'assets/images/SVGRepo_iconCarrier.png',
                                width: 35.93 * fem,
                                height: 21.61 * fem,
                              ),
                            ),
                            Text(
                              'Orders',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 55.5 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 2 * fem, 0 * fem, 0 * fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 2 * fem),
                              width: 18 * fem,
                              height: 20 * fem,
                              child: Image.asset(
                                'assets/images/Cart.png',
                                width: 18 * fem,
                                height: 20 * fem,
                              ),
                            ),
                            Text(
                              'Cart',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 1.6 * fem),
                            width: 18.9 * fem,
                            height: 20.8 * fem,
                            child: Image.asset(
                              'assets/images/Profile icon.png',
                              width: 18.9 * fem,
                              height: 20.8 * fem,
                            ),
                          ),
                          Text(
                            // profileGqc (74:657)
                            'Profile',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xff76c423),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
