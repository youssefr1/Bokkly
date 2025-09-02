import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dio/dio.dart' show Dio;

class ApiServices{
  final String _baseUrl ='https://www.googleapis.com/books/v1/';
  final Dio _dio ;
  ApiServices(this._dio);



  Future<Map<String, dynamic>> getBooks({required String endPoint}) async{
  var responed = await  _dio.get('$_baseUrl$endPoint');
  return responed.data;
  }



}
