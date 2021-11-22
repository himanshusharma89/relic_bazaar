import 'dart:developer';

class Product {
  Product({
    this.text,
    this.owner,
    this.amount,
    this.image,
    this.seller,
    this.height,
    this.id,
    this.dbId
  });

  factory Product.fromJson(Map productData) {
    // log('prodcut id : ${productData['_id'].runtimeType}');
    return Product(
      amount: productData['amount'],
      id : productData['id'],
      dbId: productData['_id'],
      image: productData['image'].toString() == ''
          ? 'assets/items/${productData['id']}.png'
          : productData['image'].toString(),
      owner: productData['owner'].toString(),
      seller: productData['seller'].toString(),
      text: productData['name'].toString(),
      height: productData['height'] == null || productData['height'] as int == 0
          ? 50
          : productData['height'] as int,
    );
  }

  final String? text;
  final String? owner;
  final int? amount;
  final String? image;
  final String? seller;
  final int? height;
  final int?  id;
  final String? dbId;
}
