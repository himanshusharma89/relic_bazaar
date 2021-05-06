import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductService {
  Future<List<dynamic>> getProducts() async {
    final http.Response response = await http.get(
      'https://himanshusharma89-api.herokuapp.com/api/relic_bazaar/products',
    );
    return jsonDecode(response.body) as List<dynamic>;
  }
}
