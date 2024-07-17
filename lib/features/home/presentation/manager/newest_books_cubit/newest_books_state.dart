import 'package:bookly/features/home/data/models/book_model/BookModel.dart';

class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}
class NewestBooksLoading extends NewestBooksState {}
class NewestBooksSuccess extends NewestBooksState {
  List<BookModel>books;
  NewestBooksSuccess(this.books);
}
class NewestBooksFailure extends NewestBooksState {
  String e;
  NewestBooksFailure(this.e);
}
