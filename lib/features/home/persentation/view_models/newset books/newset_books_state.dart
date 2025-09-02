part of 'newset_books_cubit.dart';

@immutable
abstract class NewsetBooksState {}

final class NewsetBooksInitial extends NewsetBooksState {}
final class NewsetBooksloading extends NewsetBooksState {}
final class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

  NewsetBooksSuccess(this.books);
}
final class NewsetBooksfailure extends NewsetBooksState {
  final String errMessage;

  NewsetBooksfailure(this.errMessage);
}
