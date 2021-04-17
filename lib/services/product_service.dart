import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/widgets/product/product_card.dart';

class ProductService {
  Future<List<ProductCard>> getProducts() async {
    return productsList;
  }
}
