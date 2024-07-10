import 'package:flutter/material.dart';

import 'might_like_list_view_item.dart';

class MightLikeListView extends StatelessWidget {
  const MightLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 8),
          child: MightLikeListViewItem(),
        ),
        itemCount: 10,
      ),
    );
  }
}