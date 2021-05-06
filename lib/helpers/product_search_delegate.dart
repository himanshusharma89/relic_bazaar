import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/model/product_model.dart';
import 'package:relic_bazaar/services/product_service.dart';
import 'package:relic_bazaar/widgets/product/product_card.dart';

class ProductSearchDelegate extends SearchDelegate<ProductCard> {
  @override
  String get searchFieldLabel => 'Search for products';

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: RelicColors.backgroundColor,
      ),
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final ProductService productService = ProductService();
    return FutureBuilder<List<dynamic>>(
      future: productService.getProducts(),
      builder: (_, AsyncSnapshot<List<dynamic>> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          final List<dynamic> productList = snapshot.data
              .where(
                (dynamic element) => element['name']
                    .toString()
                    .toLowerCase()
                    .contains(query.toLowerCase()),
              )
              .toList();

          return productList.isEmpty
              ? const Center(
                  child: Text(
                    'This product is not available !!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : ListView.separated(
                  itemBuilder: (_, int i) {
                    final Product product = Product.fetchedData(productList[i]);
                    return InkWell(
                      onTap: () => Navigator.of(context).pushNamed(
                        RouteConstant.PRODUCTS_SCREEN,
                        arguments: Product(
                          amount: product.amount,
                          height: product.height,
                          image: product.image,
                          owner: product.owner,
                          seller: product.seller,
                          text: product.text,
                        ),
                      ),
                      child: ListTile(
                        title: Text(product.text),
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(product.image),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, int i) => const Divider(),
                  itemCount: productList.length,
                );
        }
      },
    );
  }
}
