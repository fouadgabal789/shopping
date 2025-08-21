import 'package:flutter/material.dart';
import 'package:shoping/modules/home/my_cart_screen.dart';
import 'package:shoping/modules/profile/my_account_screen.dart';

import 'home_screen.dart';
class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  @override
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const MyCartScreen(),
    const MyAccountScreen(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _screens[_currentIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,

              elevation: 0,
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              selectedItemColor: Color(0XFFFED393),
              unselectedItemColor: Color(0XFF8B9E9E),
              showUnselectedLabels: true,
              selectedFontSize: 14,
              unselectedFontSize: 12,
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),

    );
  }
}
