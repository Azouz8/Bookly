import 'package:booklyy/core/utils/assets.dart';
import 'package:flutter/material.dart';

class MightLikeListViewItem extends StatelessWidget {
  const MightLikeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: AspectRatio(
        aspectRatio: 1.5 / 2.3,
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
      ),
    );
  }
}


