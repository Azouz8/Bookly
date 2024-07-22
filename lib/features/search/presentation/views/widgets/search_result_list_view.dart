import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:bookly/features/search/presentation/manager/search_books_cubit/search_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if(state is SearchBooksSuccess){
          return Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              // shrinkWrap: true,
              itemBuilder: (context, index) => NewestBookListViewItem(bookModel: state.books[index]),
              itemCount: state.books.length ,
              physics: const BouncingScrollPhysics(),
            ),
          );
        }
        else if(state is SearchBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        else if(state is SearchBooksLoading){
          return const Center(child: CircularProgressIndicator());
        }
        else{
          return Container();
        }
      },
    );
  }
}
