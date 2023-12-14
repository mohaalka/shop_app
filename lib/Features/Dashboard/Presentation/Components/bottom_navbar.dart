import 'package:flutter/material.dart';
import 'package:shop_app/Core/AppColors/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.whiteColor.withOpacity(0.5),
              blurRadius: 25.0,
            )
          ]),
      child: BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: AppColors.blackColor,
              size: 20,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.whiteColor,
            icon: Icon(
              Icons.search,
              color: AppColors.blackColor,
              size: 20,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_travel_rounded,
              color: AppColors.blackColor,
              size: 20,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: AppColors.blackColor,
              size: 20,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: AppColors.blackColor,
              size: 20,
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
