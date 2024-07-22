import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../../../home/data/models/book_model/BookModel.dart';

abstract class SearchRepo {
  Future<Either<Failures, List<BookModel>>> fetchSearchedBooks(String search);
}