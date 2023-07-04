import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils.dart';
import 'VerificationScreen.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

String? _selected;
List<Map> _myJson = [
  {'id': '1', 'image': 'assets/images/india.png', 'name': 'INDIA'},
  {'id': '2', 'image': 'assets/images/canada.png', 'name': 'CANADA'},
  {'id': '3', 'image': 'assets/images/poland.png', 'name': 'POLAND'},
  {'id': '4', 'image': 'assets/images/usa.png', 'name': 'USA'},
  {'id': '5', 'image': 'assets/images/africa.png', 'name': 'AFRICA'},
];

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController phoneEditingController = TextEditingController();

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    phoneEditingController.addListener(_updateButtonStatus);
  }

  @override
  void dispose() {
    phoneEditingController.dispose();
    super.dispose();
  }

  void _updateButtonStatus() {
    setState(() {
      _isButtonEnabled = phoneEditingController.text.isNotEmpty;
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
                left: 47.0000305176 * fem,
                top: 90.0000152588 * fem,
                child: Align(
                  child: SizedBox(
                    width: 193 * fem,
                    height: 50 * fem,
                    child: Text(
                      'My mobile ',
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
                left: 51.0000305176 * fem,
                top: 196.0000152588 * fem,
                child: Align(
                  child: SizedBox(
                    width: 292 * fem,
                    height: 60 * fem,
                    child: Text(
                      'Please enter your mobile phone number. We will send you a 4-digit code to verify your account. ',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.4285714286 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 48.0000305176 * fem,
                top: 309.0000152588 * fem,
                child: SizedBox(
                  width: 295 * fem,
                  height: 128 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 20 * fem),
                        child: Container(
                          width: double.infinity,
                          height: 58 * fem,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          child: TextField(
                            controller: phoneEditingController,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              prefixIcon: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton(
                                    value: _selected,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _selected = newValue as String?;
                                      });
                                    },
                                    items: _myJson.map((Country) {
                                      return DropdownMenuItem(
                                        value: Country['id'],
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                Country['image'],
                                              ),
                                              radius: 8,
                                            )
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
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
                          ),
                          onPressed: _isButtonEnabled
                              ? () {
                                  Get.to(const VerificationScreen());
                                }
                              : null,
                          child: Text(
                            'Continue',
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
                    ],
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
