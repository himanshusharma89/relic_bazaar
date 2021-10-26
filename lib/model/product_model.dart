class Product {
  Product({
    this.text,
    this.owner,
    this.amount,
    this.image,
    this.seller,
    this.height,
  });

  factory Product.fromJson(dynamic productData) {
    return Product(
      amount: productData['amount'].toString(),
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
  final String? amount;
  final String? image;
  final String? seller;
  final int? height;
}
