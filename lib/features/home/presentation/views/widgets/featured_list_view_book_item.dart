import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedListViewBookItem extends StatelessWidget {
  const FeaturedListViewBookItem({super.key , required this.imgURL, required this.bookModel});
  final String imgURL;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView , extra: bookModel);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 1.5 / 2.4,
          child: CachedNetworkImage(
            imageUrl: imgURL,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.fill,
          )
        ),
      ),
    );
  }
}
