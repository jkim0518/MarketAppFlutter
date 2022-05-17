class Product {
  final String? imageUrl;
  final String? title;
  final int? price;
  final int? discount;

  Product({this.imageUrl, this.title, this.price, this.discount});
}

List<Product> productList = [
  Product(
    imageUrl:
        "https://github.com/flutter-coder/ui_images/blob/master/kurly_product_0.jpg?raw=true",
    title: "BBQ Back Ribs 450g",
    price: 16000,
    discount: 7,
  ),
  Product(
    imageUrl:
        "https://github.com/flutter-coder/ui_images/blob/master/kurly_product_1.jpg?raw=true",
    title: "Fresh Salmon",
    price: 8400,
    discount: 15,
  ),
  Product(
    imageUrl:
        "https://github.com/flutter-coder/ui_images/blob/master/kurly_product_2.jpg?raw=true",
    title: "Eco-friendly strawberries",
    price: 8900,
    discount: 35,
  ),
  Product(
    imageUrl:
        "https://github.com/flutter-coder/ui_images/blob/master/kurly_product_3.jpg?raw=true",
    title: "Shrimps 230g",
    price: 6200,
    discount: 10,
  ),
  Product(
    imageUrl:
        "https://github.com/flutter-coder/ui_images/blob/master/kurly_product_4.jpg?raw=true",
    title: "Tomahawk 700g",
    price: 32000,
    discount: 15,
  ),
  Product(
    imageUrl:
        "https://github.com/flutter-coder/ui_images/blob/master/kurly_product_5.jpg?raw=true",
    title: "Freshly made tofu",
    price: 4600,
    discount: 15,
  ),
];