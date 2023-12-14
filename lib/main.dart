import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_app/Core/AppRouting/shop_routing.dart';

import 'Features/Dashboard/Presentation/Screens/home_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ShopRoutingConfiguration.homeRoute,
      routes: {
        ShopRoutingConfiguration.homeRoute: (context) => HomeScreen(),
      },
    );
  }
}