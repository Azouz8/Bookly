import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'book_details_widget.dart';
import 'might_like_widget.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            firstElementOfAppBar: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(FontAwesomeIcons.x),
            ),
            secondElementOfAppBar: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ),
          BookDetailsWidget(
            bookModel: bookModel,
          ),
          const SizedBox(
            height: 24,
          ),
          const MightLikeWidget(),
        ],
      ),
    );
  }
}
