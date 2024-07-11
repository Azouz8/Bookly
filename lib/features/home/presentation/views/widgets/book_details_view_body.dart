import 'package:booklyy/core/utils/assets.dart';
import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyy/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'book_details_preview_button.dart';
import 'book_details_widget.dart';
import 'might_like_list_view.dart';
import 'might_like_widget.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          const BookDetailsWidget(),
          const SizedBox(
            height: 24,
          ),
          const MightLikeWidget(),
        ],
      ),
    );
  }
}
