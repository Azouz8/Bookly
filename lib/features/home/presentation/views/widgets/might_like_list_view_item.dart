import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class MightLikeListViewItem extends StatelessWidget {
  const MightLikeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3 / 2.2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          image: const DecorationImage(
            image: AssetImage(
              AssetsData.testImage,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}


