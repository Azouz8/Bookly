import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'might_like_list_view.dart';

class MightLikeWidget extends StatelessWidget {
  const MightLikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
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
        SizedBox(
          height: 10,
        ),
        //Built this to train on the listView Usage
        MightLikeListView(),
      ],
    );
  }
}