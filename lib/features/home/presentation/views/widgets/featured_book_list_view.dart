import 'package:booklyy/features/home/presentation/views/widgets/featured_list_view_book_item.dart';
import 'package:flutter/material.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: MediaQuery.sizeOf(context).height*0.3,
      child: ListView.separated(
        itemBuilder: (context, index) => const FeaturedListViewBookItem(),
        scrollDirection: Axis.horizontal,
        itemCount: 10, separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10,),
      ),
    );
  }
}
