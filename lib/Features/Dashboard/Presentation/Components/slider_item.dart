import 'package:flutter/material.dart';
import 'package:shop_app/Core/AppColors/app_colors.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.greyColor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        "Slider PlaceHolder",
        style: TextStyle(
          fontSize: 20,
          color: AppColors.redColor,
        ),
      ),
    );
  }
}
