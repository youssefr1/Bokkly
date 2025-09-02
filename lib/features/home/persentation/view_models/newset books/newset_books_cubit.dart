import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo)
      : super(NewsetBooksInitial());
  final HomeRepo homeRepo;

  Future<void> featchNewsetBooks() async {
    emit(NewsetBooksloading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
            (Failure) {
          emit(NewsetBooksfailure(Failure.errMessage));
        }, (Books) {
      emit(NewsetBooksSuccess(Books));
    }
    );
  }
}
