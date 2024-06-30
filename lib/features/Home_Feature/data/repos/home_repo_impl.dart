import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/Home_Feature/data/models/BookModel.dart';
import 'package:bookly_app/features/Home_Feature/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  // Getting Newest Books

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {

    try {
      var extractData = await apiServices.get(
          endPoint: 'volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest');
      List<BookModel> books = [];
      for (var item in extractData["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(
        errorMsg: e.toString(),
      ));
    }

  }


  // Getting Featured Books
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {

    try {
      var extractData = await apiServices.get(
          endPoint: 'volumes?q=subject:programming&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var item in extractData["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(
        errorMsg: e.toString(),
      ));
    }

  }

}
