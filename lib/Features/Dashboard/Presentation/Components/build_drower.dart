import 'package:flutter/material.dart';

class BuildDrower extends StatelessWidget {
  const BuildDrower({
    super.key,
  });

  Widget _buildDrowerItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 14, 68, 68),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Image.asset('images/klogo.png',
                        color: Colors.white, width: 160),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.0),
                    child: Divider(color: Colors.white),
                  ),
                  _buildDrowerItem(Icons.home, "Home"),
                  _buildDrowerItem(Icons.favorite_border_sharp, "So dhowoow"),
                  _buildDrowerItem(Icons.store, "Store"),
                  _buildDrowerItem(
                      Icons.shopping_cart_checkout_rounded, "Shopping Cart"),
                  _buildDrowerItem(Icons.settings, "Setting"),
                ],
              ),
              _buildDrowerItem(Icons.logout, "Logout"),
            ]));
  }
}
