import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:relic_bazaar/model/product_model.dart';

class ProductService {
  Future<List<Product>> getProducts() async {
    final http.Response response = await http.get(
      'https://himanshusharma89-api.herokuapp.com/relic_bazaar/products',
    );
    final List<dynamic> fetchedData =
        json.decode(response.body) as List<dynamic>;
    return fetchedData
        .map(
          (dynamic productData) => Product.fromJson(productData),
        )
        .toList();
  }
}
