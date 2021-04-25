import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/product/product_card.dart';

class ProductService {
  Future<List<ProductCard>> getProducts() async {
    return productsList;
  }
}
