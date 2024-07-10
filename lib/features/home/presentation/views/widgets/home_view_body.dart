import 'package:booklyy/core/utils/assets.dart';
import 'package:booklyy/features/home/presentation/views/widgets/best_seller_widget.dart';
import 'package:booklyy/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                firstElementOfAppBar: Image.asset(
                  AssetsData.logo,
                  height: 22,
                ),
                secondElementOfAppBar: IconButton(
                    icon: const Icon(FeatherIcons.search), onPressed: () {}),
              ),
              const FeaturedBookListView(),
              const BestSellerWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
