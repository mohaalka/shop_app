import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/Core/AppColors/app_colors.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        "New Arrival",
        style: GoogleFonts.robotoFlex(
          color: AppColors.blackColor,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Text(
        "See All",
        style: GoogleFonts.firaMono(
          color: AppColors.greenColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
