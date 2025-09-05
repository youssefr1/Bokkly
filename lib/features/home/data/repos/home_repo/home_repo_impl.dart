import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utilts/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiServices.getBooks(
            endPoint:
                'volumes?q=drama&Filtering=free-ebooks&Sorting=newest',
          );
      List<BookModel> books =[];
      for(var item in data['items']){
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return  right(books) ;
    } catch (e) {
   if(e is DioError){
     return left(ServerFailure.fromDioError(e));
   }else{
     return left(ServerFailure(e.toString()));
   }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.getBooks(
        endPoint:
        'volumes?q=comedy&Sorting=relevance&Filtering=free-ebooks',
      );
      List<BookModel> books =[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return  right(books) ;
    } catch (e) {
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }else{
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category})async {
   try {
     var data = await apiServices.getBooks(endPoint: 'volumes?q=films&Sorting=relevance&Filtering=free-ebooks');
     List<BookModel> books =[];
     for(var item in data['items']){
        books.add(BookModel.fromJson(item));
        }
     return  right(books) ;
   } catch (e) {
     if(e is DioError) {
       return Left(ServerFailure.fromDioError(e));
     }else{
       return Left(ServerFailure(e.toString()));
     }
   }
  }
}
