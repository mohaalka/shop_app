import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_app/Core/AppColors/app_colors.dart';
import 'package:shop_app/Features/ProductStore/Presentation/Components/product_item.dart';

import '../../../../Core/Utitlies/app_loader.dart';
import '../../../../Core/Utitlies/show_snack_bar.dart';
import '../../../ProductStore/Controller/product_controller.dart';
import '../Components/Search_product.dart';
import '../Components/bottom_navbar.dart';
import '../Components/brand_category.dart';
import '../Components/product_title.dart';
import '../Components/slider_item.dart';
import '../Components/user_location.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        toolbarHeight: 70,
        leading: Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.only(left: 10, top: 30),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            Icons.menu,
            size: 20,
            color: AppColors.blackColor,
          ),
        ),
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(left: 10, top: 30),
          child: Text(
            "Drops",
            style: TextStyle(
              fontSize: 30,
              color: AppColors.blackColor,
              fontFamily: "Sofia",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(right: 10, top: 30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.shopping_bag,
              size: 20,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SearchProduct(),
          UserLocation(),
          BrandCategoryList(),
          SliderItem(),
          ProductTitle(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ref.watch(getProductsProvider(context)).when(
                  data: (productData) {
                    if (productData.isEmpty) return SizedBox();

                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: productData.length,
                      itemBuilder: (context, index) =>
                          ProductItem(productModel: productData[index]),
                    );
                  },
                  error: (error, _) => showCustomSnackBar(
                      textTosShow: error.toString(), context: context),
                  loading: () => AppLoader(),
                ),
          ),
          SizedBox(height: 50),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
