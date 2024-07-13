import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

import 'book_details_preview_button.dart';

class BookDetailsWidget extends StatelessWidget {
  const BookDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.5,
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
        ),
        const SizedBox(
          height: 32,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18.copyWith(
              color: const Color(0xff817f8c),
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 14,
        ),
        const RatingWidget(),
        const SizedBox(
          height: 24,
        ),
        const BookDetailsPreviewButton(),
      ],
    );
  }
}