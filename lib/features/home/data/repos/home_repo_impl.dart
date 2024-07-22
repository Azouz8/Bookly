import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?q=Computer Science&Filtering=free-ebooks&Sorting:newest");
      List<BookModel> books = [];
      for (var i in data["items"]) {
        books.add(BookModel.fromJson(i));
      }
      return right(books);
    } on Exception {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?q=Programming&Filtering=free-ebooks");
      List<BookModel> books = [];
      for (var i in data["items"]) {
        books.add(BookModel.fromJson(i));
      }
      return right(books);
    } on Exception {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?q=Programming&Filtering=free-ebooks&Sorting=relevance");
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
