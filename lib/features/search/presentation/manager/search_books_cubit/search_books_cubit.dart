import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit({required this.searchRepo, required this.search})
      : super(SearchBooksInitial());
  SearchRepo searchRepo;
  final String search;

  Future<void> fetchSearchedBooks() async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchedBooks(search);
    result.fold((failure) {
      emit(SearchBooksFailure(failure as String));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}
