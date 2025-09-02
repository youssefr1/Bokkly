import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utilts/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  Future<Either<Failure, List<BookModel>>>
  fetchNewsetBooks() async {
    try {
      var data = await apiServices.getBooks(
            endPoint:
                'volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest',
          );
      List<BookModel> books =[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return  right(books) ;
    } catch (e) {
     return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>>
  fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
