import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo)
    : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> featchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (Failure) {
        emit(FeaturedBooksfailure(Failure.errMessage));
      },
      (Books) {
        emit(FeaturedBooksSuccess(Books));
      },
    );
  }
}
