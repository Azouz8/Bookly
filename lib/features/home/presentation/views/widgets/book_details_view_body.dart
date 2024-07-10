import 'package:booklyy/core/utils/assets.dart';
import 'package:booklyy/core/utils/styles.dart';
import 'package:booklyy/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyy/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'book_details_preview_button.dart';
import 'might_like_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
          SizedBox(
            width: MediaQuery.sizeOf(context).width *0.5,
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
            style: Styles.textStyle18
                .copyWith(color: const Color(0xff817f8c),fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 14,
          ),
          const RatingWidget(),
          const SizedBox(
            height: 24,
          ),
          const BookDetailsPreviewButton(),
          const SizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "You also might like",
                  style: Styles.textStyle16Bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const MightLikeListView(),
        ],
      ),
    );
  }
}

