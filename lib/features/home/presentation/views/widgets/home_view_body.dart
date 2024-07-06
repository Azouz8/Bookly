import 'package:booklyy/features/home/presentation/views/widgets/best_seller_widget.dart';
import 'package:booklyy/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'featured_list_view_book_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        Expanded(
          flex: 2,
            child: FeaturedBookListView()),
        Expanded(
          flex: 3,
            child: BestSellerWidget()),
      ],
    );
  }
}

