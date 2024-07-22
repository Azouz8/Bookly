import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'rating_widget.dart';

class NewestBookListViewItem extends StatelessWidget {
  const NewestBookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                    aspectRatio: 1.7 / 2.4,
                    child: CachedNetworkImage(
                      imageUrl:
                          bookModel.volumeInfo.imageLinks?.thumbnail ?? "",
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      fit: BoxFit.fill,
                    )),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.55,
                      child: Text(
                        "${bookModel.volumeInfo.title}",
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGtSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      bookModel.volumeInfo.authors?.first ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle14Normal
                          .copyWith(color: const Color(0xffb6b5bb)),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          "Free",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        RatingWidget(
                          count: bookModel.volumeInfo.ratingsCount ?? 0,
                          rating: bookModel.volumeInfo.averageRating ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
