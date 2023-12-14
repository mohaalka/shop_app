import 'package:flutter/material.dart';
import 'package:shop_app/Core/AppColors/app_colors.dart';
import 'package:shop_app/Models/product_model.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;
  final bool isFirstOne;
  const ProductImage(
      {super.key, required this.imageUrl, required this.isFirstOne});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: isFirstOne ? AppColors.greenColor : AppColors.blackColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
