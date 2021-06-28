import 'package:assignment1/model/product.dart';
import 'package:assignment1/screens/favoriteScreen.dart';
import 'package:assignment1/screens/productScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Shop App'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favorite',
            )
          ]),
        ),
        body: TabBarView(
          children: [ProductsScreen(), FavoriteScreen()],
        ),
      ),
    );
  }
}
