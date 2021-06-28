import 'package:assignment1/helper/dummy_data.dart';
import 'package:assignment1/model/product.dart';
import 'package:flutter/material.dart';

class ProductListItem extends StatefulWidget {
  final Product product;
  const ProductListItem({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  _ProductListItemState createState() => _ProductListItemState();
}

class _ProductListItemState extends State<ProductListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              widget.product.imagePath,
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                widget.product.productName,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${widget.product.price.toString()} \$',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, right: 15),
            child: widget.product.isFavorite
                ? IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 35,
                    ),
                    onPressed: () {
                      setState(() {
                        widget.product.isFavorite = !widget.product.isFavorite;
                             DummyData.dummyData
                            .updateProduct(widget.product.productName);
                      });
                    },
                  )
                : IconButton(
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                      size: 35,
                    ),
                    onPressed: () {
                      setState(() {
                        widget.product.isFavorite = !widget.product.isFavorite;
                        DummyData.dummyData
                            .updateProduct(widget.product.productName);
                      });
                    },
                  ),
          )
        ],
      ),
    );
  }
}
