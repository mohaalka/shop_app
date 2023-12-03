import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final AdvancedDrawerController _advancedDrawerController =
      AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Color.fromARGB(255, 14, 68, 68),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 500),
      drawer: buildDrawer(),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  _advancedDrawerController.showDrawer();
                },
                icon: Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: Icon(Icons.sort_sharp, color: Color.fromARGB(255, 14, 68, 68)),
                  
                ),
              );
            },
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 5000,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(36),
                  topLeft: Radius.circular(36)
                )
              ),
              child: Row(
                children: [
                      Container(
                        height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      padding: EdgeInsets.symmetric(horizontal: 15),

                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 190, 9, 9),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      ),
                      
                    ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildDrawer() {
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
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text("Home", style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  leading: Icon(Icons.favorite_border_sharp, color: Colors.white),
                  title: Text("So dhowoow", style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  leading: Icon(Icons.store, color: Colors.white),
                  title: Text("Store", style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  leading: Icon(Icons.shopping_cart_checkout_rounded, color: Colors.white),
                  title: Text("Shopping Cart", style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  leading: Icon(Icons.settings, color: Colors.white),
                  title: Text("Setting", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text("logOut", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
