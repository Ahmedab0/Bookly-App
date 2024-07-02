import 'package:bookly_app/features/Home_Feature/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/BookModel.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitialState());

  final HomeRepo _homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await _homeRepo.fetchFeatureBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailureState(errorMsg: failure.errorMsg));
      },
      (books) {
        emit(FeaturedBooksSuccessState(books: books));
      },
    );
  }
}
