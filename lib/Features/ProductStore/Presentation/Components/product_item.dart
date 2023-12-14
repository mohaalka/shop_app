import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/Core/AppColors/app_colors.dart';
import 'package:shop_app/Features/ProductStore/Presentation/Screens/product_detail.dart';
import 'package:shop_app/Models/product_model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel productModel;
  const ProductItem({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (builder) => ProductDetail(productModel: productModel)));
      },
      child: SizedBox(
        height: 400,
        width: 300,
        child: ListTile(
          contentPadding: EdgeInsets.only(left: 4, bottom: 30),
          title: Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 4),
            alignment: Alignment.topRight,
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    productModel.thumbnail,
                  ),
                )),
            child: CircleAvatar(
              backgroundColor: AppColors.whiteColor,
              radius: 20,
              child: Icon(
                productModel.id % 2 == 0
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: productModel.id % 2 == 0
                    ? AppColors.redColor
                    : Colors.black45,
                size: 30,
              ),
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  productModel.title,
                  maxLines: 1,
                  style: GoogleFonts.firaCode(
                    color: AppColors.blackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "\$${productModel.price}",
                style: GoogleFonts.jetBrainsMono(
                  color: AppColors.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
