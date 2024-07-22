import 'package:bookly/core/functions/launch_url.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:flutter/material.dart';

import 'buy_preview_button_side.dart';

class BookDetailsPreviewButton extends StatelessWidget {
  const BookDetailsPreviewButton({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BuyPreviewButtonSide(
            bottomLeft: 16,
            topLeft: 16,
            text: "Free",
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
          BuyPreviewButtonSide(
            onTap: () async {
              launchURL(context, bookModel.volumeInfo.previewLink);
            },
            bottomRight: 16,
            topRight: 16,
            text: getText(bookModel),
            backgroundColor: const Color(0xffe57965),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return "Not Available";
    } else {
      return "Preview";
    }
  }
}
