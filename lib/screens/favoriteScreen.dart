import 'package:assignment1/helper/dummy_data.dart';
import 'package:assignment1/model/product.dart';
import 'package:assignment1/widgets/product_list_item.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: DummyData.dummyData.getProducts().map((e) {
            if (e.isFavorite) {
              return ProductListItem(
                product: Product(
                    imagePath: e.imagePath,
                    productName: e.productName,
                    price: e.price,
                    isFavorite: e.isFavorite),
              );
            } else {
              return Container();
            }
          }).toList(),
        ),
      ),
    );
  }
}
