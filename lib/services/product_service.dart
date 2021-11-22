import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:relic_bazaar/model/product_model.dart';

class ProductService {
  Future<List<Product>> getProducts() async {
    final http.Response response = await http.get(
      Uri.parse('https://himanshusharma89-api.herokuapp.com/relic_bazaar/products'),
    );
    final List<dynamic> fetchedData =
        json.decode(response.body) as List<dynamic>;
    return fetchedData
        .map(
          (dynamic productData) => Product.fromJson(productData),
        )
        .toList();
  }

  Future<Product> getProductDetails(String index) async {
    print('index : $index');
    final http.Response response = await http.get(
      Uri.parse('https://himanshusharma89-api.herokuapp.com/relic_bazaar/products/$index'),
    );
    final Product product = Product.fromJson(json.decode(response.body));
    print(product.text);
    return product;
  }

}
