import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/Core/AppColors/app_colors.dart';
import 'package:shop_app/Models/product_model.dart';

class ProductMetadata extends StatelessWidget {
  const ProductMetadata({super.key, required this.productModel});
  final ProductModel productModel;

  Widget _backDeisgn(Widget child) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        border: Border.all(color: Colors.grey.withOpacity(0.6)),
        borderRadius: BorderRadius.circular(18),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: SizedBox(
            width: 150,
            child: Text(
              productModel.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.roboto(
                color: AppColors.blackColor,
                fontSize: 30,
              ),
            ),
          ),
          subtitle: Text(
            "\$${productModel.price}",
            style: GoogleFonts.roboto(
              color: AppColors.blackColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: CircleAvatar(
            backgroundColor: AppColors.whiteColor,
            radius: 20,
            child: Icon(
              productModel.id % 2 == 0 ? Icons.favorite : Icons.favorite_border,
              color: productModel.id % 2 == 0
                  ? AppColors.redColor
                  : Colors.black45,
              size: 30,
            ),
          ),
        ),
        Row(
          children: [
            _backDeisgn(Text(
              "5 Pair Left",
              style:
                  GoogleFonts.roboto(fontSize: 17, color: AppColors.blackColor),
            )),
            _backDeisgn(Text(
              "Sold 60",
              style:
                  GoogleFonts.roboto(fontSize: 17, color: AppColors.blackColor),
            )),
            _backDeisgn(
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    "${productModel.rating}",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " (Reviews)",
                    style: GoogleFonts.roboto(
                      fontSize: 17,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
