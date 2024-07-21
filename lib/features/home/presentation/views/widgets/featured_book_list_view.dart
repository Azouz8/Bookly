import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => FeaturedListViewBookItem(
                imgURL: state.books[index].volumeInfo.imageLinks?.thumbnail ?? "",
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 10,
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
