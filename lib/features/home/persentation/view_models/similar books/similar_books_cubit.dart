import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo/home_repo.dart';
import '../newset books/newset_books_cubit.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> featchSimilarBooks({required String category} ) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(


            (Failure) {emit(SimilarBooksFailure(Failure.errMessage));},
            (Books) {emit(SimilarBooksSuccess(Books));}


    );
  }
}
