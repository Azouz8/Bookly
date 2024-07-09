import 'package:booklyy/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklyy/features/home/presentation/views/widgets/best_seller_widget.dart';
import 'package:booklyy/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBookListView(),
                BestSellerWidget(),
              ],
            ),
        ),
      ],
    );
  }
}

