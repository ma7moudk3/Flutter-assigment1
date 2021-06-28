import 'package:flutter/material.dart';

class ImageSliderItem extends StatelessWidget {
  final String imagePath;
  const ImageSliderItem({
    Key key,
    @required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(
          imagePath,
          height: 190,
          width: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
