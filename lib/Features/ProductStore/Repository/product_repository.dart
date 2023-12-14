import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shop_app/Core/APIConstants/api_constants.dart';
import 'package:shop_app/Core/ExceptionHandling/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// create instance of this product repository as provider
// for global usage
final productRepositoryProvider = Provider((ref) => ProductRepository());

class ProductRepository {
  // getProducts
  Future<Either<CatchException, Response>> getProducts() async {
    final Uri parseUrl = Uri.parse(ApiConstants.apiUrl);

    final respose = await http.get(parseUrl);
    if (respose.statusCode == 200) {
      return Right(respose);
    } else
      return Left(CatchException(exceptionMessage: "SomeThing went wrong"));
  }
}
