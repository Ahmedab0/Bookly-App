
import 'package:bookly_app/features/Home_Feature/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';


abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();

  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}
