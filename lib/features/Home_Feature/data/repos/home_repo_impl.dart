
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/Home_Feature/data/models/BookModel.dart';
import 'package:bookly_app/features/Home_Feature/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {



    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {


    throw UnimplementedError();
  }

}