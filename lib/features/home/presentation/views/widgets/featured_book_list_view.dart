import 'package:booklyy/features/home/presentation/views/widgets/featured_list_view_book_item.dart';
import 'package:flutter/material.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(right: 10),
        child: FeaturedListViewBookItem(),
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
    );
  }
}
