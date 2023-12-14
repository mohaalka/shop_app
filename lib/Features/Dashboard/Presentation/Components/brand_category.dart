import 'package:flutter/material.dart';
import 'package:shop_app/Core/AppColors/app_colors.dart';

class BrandCategoryList extends StatelessWidget {
  const BrandCategoryList({super.key});

  Widget _buildBrandItem(String imageUrl) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.greyColor,
      ),
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildBrandItem("assets/logos/adidas.png"),
          _buildBrandItem("assets/logos/nike.png"),
          _buildBrandItem("assets/logos/adidas.png"),
          _buildBrandItem("assets/logos/nike.png"),
          _buildBrandItem("assets/logos/adidas.png"),
        ],
      ),
    );
  }
}
