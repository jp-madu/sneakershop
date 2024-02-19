import 'package:flutter/material.dart';

import '../components/bottom_navbar.dart';
import '../components/constants.dart';
import 'cart_page.dart';
import 'shoe_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate bottom bar
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //this displays the shoestore page
    ShoeStore(),

    //this displays the cart page
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      backgroundColor: myBackgroundColor,
      bottomNavigationBar: MyBottomNavbar(
        onTabChangeBottomNavbar: (index) => navigateBottomBar(index),
      ),
    );
  }
}
