import 'package:flutter/material.dart';
import 'package:shop_app/Core/AppColors/app_colors.dart';

showCustomSnackBar(
    {required String textTosShow, required BuildContext context}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        textTosShow,
        style: TextStyle(
          fontSize: 20,
          color: AppColors.blackColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
