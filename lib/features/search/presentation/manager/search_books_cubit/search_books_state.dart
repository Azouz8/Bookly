import 'package:bookly/features/home/data/models/book_model/BookModel.dart';

class SearchBooksState {}

class SearchBooksInitial extends SearchBooksState {}
class SearchBooksSuccess extends SearchBooksState {
  List<BookModel> books;
  SearchBooksSuccess(this.books);
}
class SearchBooksFailure extends SearchBooksState {
  String errMessage;
  SearchBooksFailure(this.errMessage);
}
class SearchBooksLoading extends SearchBooksState {}
