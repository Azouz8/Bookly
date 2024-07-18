import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewBookItem extends StatelessWidget {
  const FeaturedListViewBookItem({super.key , required this.imgURL});
  final String imgURL;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5 / 2.4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          image: DecorationImage(
            image: NetworkImage(imgURL),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
