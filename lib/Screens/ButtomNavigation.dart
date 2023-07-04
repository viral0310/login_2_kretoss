import 'package:flutter/material.dart';

import 'CartScreen.dart';
import 'ExploreScreen.dart';
import 'HomePage.dart';
import 'OrdersScreen.dart';

class navigationbar extends StatefulWidget {
  const navigationbar({Key? key}) : super(key: key);

  @override
  State<navigationbar> createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {
  int index = 3;
  final screens = [
    const Explore(),
    const Orders(),
    const Cart(),
    const HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        child: NavigationBar(
          surfaceTintColor: Colors.blue,
          shadowColor: Colors.blueAccent,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          height: 60,
          //indicatorShape: const CircleBorder(),
          indicatorColor: const Color(0xFF00BA90),
          backgroundColor: const Color(0xe50076fe),
          elevation: double.maxFinite,
          destinations: [
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/search.png',
                ),
                label: 'Explore'),
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/SVGRepo_iconCarrier.png',
                ),
                label: 'Orders'),
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/Cart.png',
                ),
                label: 'Cart'),
            const NavigationDestination(
                icon: Icon(
                  Icons.person_2_rounded,
                  color: Colors.white,
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
