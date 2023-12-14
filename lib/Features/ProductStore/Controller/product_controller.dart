// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_app/Features/ProductStore/Repository/product_repository.dart';
import 'package:shop_app/Models/product_model.dart';

import '../../../Core/Utitlies/show_snack_bar.dart';

// object productController
final productControllerProvider = Provider((ref) => ProductController(
      productRepository: ref.watch(productRepositoryProvider),
    ));

// provider for getting product
// since it is future we do use futureprovider
final getProductsProvider = FutureProvider.family((ref, BuildContext context) =>
    ref.watch(productControllerProvider).getProducts(context));

class ProductController {
  final ProductRepository _productRepository;

  ProductController({required ProductRepository productRepository})
      : _productRepository = productRepository;

  // getProdcut

  Future<List<ProductModel>> getProducts(BuildContext context) async {
    final getResult = await _productRepository.getProducts();
    List<ProductModel> products = [];

    getResult.fold(
        (exceptionResult) => {
              showCustomSnackBar(
                  textTosShow: exceptionResult.exceptionMessage,
                  context: context),
            }, (productResult) {
      final encodeTheData = (jsonDecode(productResult.body)
          as Map<String, dynamic>)["products"] as List<dynamic>;

      encodeTheData.forEach((element) {
        products.add(ProductModel.fromJson(element));
      });
    });

    return products;
  }
}
