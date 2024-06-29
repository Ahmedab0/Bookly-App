import 'package:bookly_app/features/Home_Feature/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';


abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
}
