import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'book_details_preview_button.dart';

class BookDetailsWidget extends StatelessWidget {
  const BookDetailsWidget({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.5,
            child: AspectRatio(
                aspectRatio: 1.5 / 2.3,
                child: CachedNetworkImage(
                  imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                      "https://marketplace.canva.com/EAFmtJTEua8/1/0/1003w/canva-white-and-blue-geometric-business-book-cover-UaW7V8MHJDU.jpg",
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.fill,
                )),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontSize: 28),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
              color: const Color(0xff817f8c), fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 14,
        ),
        RatingWidget(
            rating: bookModel.volumeInfo.averageRating ?? 0,
            count: bookModel.volumeInfo.ratingsCount ?? 0),
        const SizedBox(
          height: 24,
        ),
        BookDetailsPreviewButton(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
