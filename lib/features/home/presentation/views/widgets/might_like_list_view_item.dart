import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MightLikeListViewItem extends StatelessWidget {
  const MightLikeListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 1.3 / 2.2,
          child: CachedNetworkImage(
            imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
