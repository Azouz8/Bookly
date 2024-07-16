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
    try{
      var data = await apiService.get(
          endPoint:
          "volumes?q=subject:Programming&Filtering=free-ebooks&Sorting:newest");
      List<BookModel> books =[];
      for(var i in data["items"]){
        books.add(i);
      }
      return right(books);
    }on Exception catch(e){
      return left(ServerFailure());
    }

  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
