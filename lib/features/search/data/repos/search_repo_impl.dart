import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImpl implements SearchRepo{
  final ApiService apiService;

  SearchRepoImpl({required this.apiService});
  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchedBooks(String search) async{
    try {
      var data = await apiService.get(
          endPoint:
          "volumes?q=$search&Filtering=free-ebooks");
      List<BookModel> books = [];
      for (var i in data["items"]) {
        books.add(BookModel.fromJson(i));
      }
      return right(books);
    } on Exception {
      return left(ServerFailure());
    }
  }

}