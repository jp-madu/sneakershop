import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavbar extends StatelessWidget {
  void Function(int)? onTabChangeBottomNavbar;

  MyBottomNavbar({super.key, required this.onTabChangeBottomNavbar});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
          onTabChange: (value) => onTabChangeBottomNavbar!(value),
          mainAxisAlignment: MainAxisAlignment.center,
          color: Colors.grey[400],
          activeColor: Colors.grey[700],
          tabBackgroundColor: Colors.grey.shade300,
          tabBorderRadius: 24,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Store',
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Cart',
            ),
          ]),
    );
  }
}
