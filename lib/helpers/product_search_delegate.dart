import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/model/product_model.dart';
import 'package:retro_shopping/widgets/product/product_card.dart';

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
    final List<ProductCard> productList = query.isEmpty
        ? productsList
        : productsList
            .where(
              (ProductCard element) =>
                  element.product.text.toLowerCase().contains(query),
            )
            .toList();

    return productList.isEmpty
        ? const Center(
            child: Text(
              'This product is not available !!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          )
        : ListView.separated(
            itemBuilder: (_, int index) {
              final Product product = productList[index].product;
              return InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    RouteConstant.PRODUCTS_SCREEN,
                    arguments: Product(
                      amount: product.amount,
                      height: product.height,
                      image: product.image,
                      owner: product.owner,
                      seller: product.seller,
                      text: product.text,
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    productList[index].product.text,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      productList[index].product.image,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (_, __) => const Divider(
              endIndent: 20,
            ),
            itemCount: productList.length,
          );
  }
}
