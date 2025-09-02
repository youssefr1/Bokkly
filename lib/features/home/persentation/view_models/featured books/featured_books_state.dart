part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}

final class FeaturedBooksfailure extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksfailure(this.errMessage);

}
final class FeaturedBooksLoading extends FeaturedBooksState {}

