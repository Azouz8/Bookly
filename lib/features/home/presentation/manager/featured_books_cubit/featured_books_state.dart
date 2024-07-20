import 'package:bookly/features/home/data/models/book_model/BookModel.dart';

class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFailure extends FeaturedBooksState {
  String errMessage;

  FeaturedBooksFailure(this.errMessage);
}
