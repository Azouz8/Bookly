import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newest_books_list_view.dart';

class NewestBooksWidget extends StatelessWidget {
  const NewestBooksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50 , left: 24,right: 24),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Newest Books",
                style: Styles.textStyle18,
              ),
            ],
          ),
          SizedBox(height: 16,),
          NewestBooksListView(),
        ],
      ),
    );
  }
}
