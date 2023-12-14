import 'package:flutter/material.dart';
import 'package:shop_app/Core/AppColors/app_colors.dart';
import 'package:shop_app/Models/product_model.dart';

import '../Components/product_image.dart';
import '../Components/product_metadata.dart';

class ProductDetail extends StatelessWidget {
  final ProductModel productModel;
  const ProductDetail({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 400,
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  productModel.thumbnail,
                ),
              ),
            ),
            child: CircleAvatar(
              backgroundColor: AppColors.greenColor,
              radius: 30,
              child: IconButton(
                onPressed: Navigator.of(context).pop,
                icon: Icon(Icons.navigate_before),
                iconSize: 30,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              scrollDirection: Axis.horizontal,
              itemCount: productModel.images.length,
              itemBuilder: (context, index) {
                return ProductImage(
                  isFirstOne: index == 0,
                  imageUrl: productModel.images[index],
                );
              },
            ),
          ),
          SizedBox(
            height: 120,
            child: ProductMetadata(
              productModel: productModel,
            ),
          ),
          Divider(
            height: 30,
            thickness: 1.4,
            color: Colors.grey.withOpacity(0.8),
          )
        ],
      ),
    );
  }
}
