import 'package:bookly/features/home/data/models/book_model/BookModel.dart';

class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFail extends FeaturedBooksState {
  String e;

  FeaturedBooksFail(this.e) {}
}
