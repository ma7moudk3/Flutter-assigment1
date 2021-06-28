import 'package:assignment1/model/product.dart';

class DummyData {
  DummyData._();
  static final DummyData dummyData = DummyData._();
  List<Product> getProducts() {
    return <Product>[
      Product(
          productName: 'T-Shirts',
          price: 150,
          isFavorite: false,
          imagePath: 'images/1.jpeg'),
      Product(
          productName: 'iphone 11',
          price: 652,
          isFavorite: true,
          imagePath: 'images/2.jpeg'),
      Product(
          productName: 'Galaxy s21',
          price: 36,
          isFavorite: false,
          imagePath: 'images/3.jpeg'),
      Product(
          productName: 'Macbook M1',
          price: 95,
          isFavorite: false,
          imagePath: 'images/4.jpeg'),
      Product(
          productName: 'iMac M1',
          price: 145,
          isFavorite: false,
          imagePath: 'images/5.jpeg'),
      Product(
          productName: 'T-shirt',
          price: 99,
          isFavorite: false,
          imagePath: 'images/6.jpeg'),
    ];
  }
}
