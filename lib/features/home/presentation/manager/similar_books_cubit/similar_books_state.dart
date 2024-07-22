import 'package:bookly/features/home/data/models/book_model/BookModel.dart';

class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  List<BookModel> books;

  SimilarBooksSuccess(this.books);
}

class SimilarBooksFailure extends SimilarBooksState {
  String errMessage;

  SimilarBooksFailure(this.errMessage);
}
