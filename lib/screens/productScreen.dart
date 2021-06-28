import 'package:assignment1/helper/dummy_data.dart';
import 'package:assignment1/model/product.dart';
import 'package:assignment1/widgets/imageSliderItem.dart';
import 'package:assignment1/widgets/product_list_item.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ImageSliderItem(
                  imagePath: 'images/1.jpeg',
                ),
                ImageSliderItem(
                  imagePath: 'images/2.jpeg',
                ),
                ImageSliderItem(
                  imagePath: 'images/3.jpeg',
                ),
                ImageSliderItem(
                  imagePath: 'images/4.jpeg',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
            child: Text(
              'Products',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: DummyData.dummyData.getProducts()
                .map((e) => ProductListItem(
                      product: Product(
                          imagePath: e.imagePath,
                          productName: e.productName,
                          price: e.price,
                          isFavorite: e.isFavorite),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
