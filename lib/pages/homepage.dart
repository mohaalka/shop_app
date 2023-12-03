import 'package:flutter/material.dart';

import '../Components/nav_bottons.dart';
import 'cartpage.dart';
import 'landingpage.dart';
import 'settingpage.dart';
import 'storepage.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
 
}

class _HomePageState extends State<HomePage> { 
  
  int _selectedIndex =0;

// functionkaan ayaa update gareynaya marka uu user-ku taabta botton_bar-ka
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages =[

    LandingPage(),

    StorePage(),

    CartPage(),

    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar:ButtomNavBar(
        onTabChange: (index)=> navigateBottomBar(index),
      ),

      body: _pages[_selectedIndex],
    );
  }
}