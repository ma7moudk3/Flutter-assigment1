import 'package:assignment1/model/product.dart';

class DummyData {
  DummyData._();
  static final DummyData dummyData = DummyData._();
  List<Product> getProducts() {
    return <Product>[
      Product(
          productName: 'Mobile',
          price: 150,
          isFavorite: false,
          imagePath: 'images/1.jpeg'),
      Product(
          productName: 'Mobile',
          price: 652,
          isFavorite: true,
          imagePath: 'images/1.jpeg'),
      Product(
          productName: 'Mobile',
          price: 36,
          isFavorite: false,
          imagePath: 'images/1.jpeg'),
      Product(
          productName: 'Mobile',
          price: 95,
          isFavorite: false,
          imagePath: 'images/1.jpeg'),
      Product(
          productName: 'Mobile',
          price: 145,
          isFavorite: false,
          imagePath: 'images/1.jpeg'),
      Product(
          productName: 'Mobile',
          price: 99,
          isFavorite: false,
          imagePath: 'images/1.jpeg'),
      Product(
          productName: 'Mobile',
          price: 45,
          isFavorite: false,
          imagePath: 'images/1.jpeg'),
    ];
  }
}
