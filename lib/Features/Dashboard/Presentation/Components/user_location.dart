import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/Core/AppColors/app_colors.dart';

class UserLocation extends StatelessWidget {
  const UserLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 6),
      title: Row(
        children: [
          Icon(
            Icons.location_on,
            color: AppColors.greenColor,
            size: 25,
          ),
          SizedBox(width: 10),
          Text(
            "Ship to ",
            style: GoogleFonts.roboto(
              color: AppColors.blackColor,
              fontSize: 17,
            ),
          ),
          Text(
            "Hodan,Mogadisho,Somalia",
            style: GoogleFonts.roboto(
              color: AppColors.blackColor,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      trailing: Icon(
        Icons.navigate_next,
        color: AppColors.blackColor,
        size: 20,
      ),
    );
  }
}
