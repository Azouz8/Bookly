import 'package:bookly/features/home/data/models/book_model/BookModel.dart';

abstract class HomeRepo{
  Future<List<BookModel>> fetchFeaturedBooks();
  Future<List<BookModel>> fetchBestSellerBooks();
}