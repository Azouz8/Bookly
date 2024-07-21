import 'package:bookly/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MightLikeListViewItem extends StatelessWidget {
  const MightLikeListViewItem({super.key, required this.imgURL});
  final String imgURL;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 1.3 / 2.2,
        child:  CachedNetworkImage(
          imageUrl: imgURL,
          errorWidget: (context, url, error) => const Icon(Icons.error),
          fit: BoxFit.fill,
        
        ),
      ),
    );
  }
}


