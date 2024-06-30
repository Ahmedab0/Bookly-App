import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/BookModel.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this._homeRepo) : super(NewestBooksInitial());

  final HomeRepo _homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoadingState());
    var result = await _homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        emit(NewestBooksFailureState(errorMsg: failure.errorMsg));
      },
      (books) {
        emit(NewestBooksSuccessState(books: books));
      },
    );
  }
}
