import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
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
                    icon: const Icon(FeatherIcons.search),
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kSearchView);
                    }),
              ),
              const FeaturedBookListView(),
              const NewestBooksWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
