import 'package:booklyy/core/utils/assets.dart';
import 'package:booklyy/core/utils/constants.dart';
import 'package:booklyy/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'best_seller_list_view_item.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Best Seller",
                style: Styles.textStyle18,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
