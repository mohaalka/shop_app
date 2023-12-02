import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 15),
        child: GNav(
          color: Colors.grey[400],
          activeColor: Color.fromARGB(255, 14, 68, 68),
          // tabActiveBorder: Border.all(color:Color.fromARGB(255, 14, 68, 68)),
          // tabBorderRadius: 10,
          tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.9), blurRadius: 4)],
          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 900), // tab animation duration
          iconSize: 24, // tab button icon size
          tabBackgroundColor: const Color.fromARGB(255, 14, 68, 68).withOpacity(0.1),
          gap: 8, 
          tabs: [
          GButton(icon: Icons.home, text: "Home",),
          GButton(icon: Icons.store, text: "Store",), 
          GButton(icon: Icons.shopping_cart, text: "Cart",), 
          GButton(icon: Icons.settings, text: "Settings",),  
        ]),
      ),
    );
  }
}