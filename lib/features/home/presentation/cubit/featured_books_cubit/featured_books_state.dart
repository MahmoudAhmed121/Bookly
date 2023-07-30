// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedPaginationLoading extends FeaturedBooksState {}

class FeaturedPaginationFailure extends FeaturedBooksState {
  final String errMessage;
  const FeaturedPaginationFailure({
    required this.errMessage,
  });
  @override
  List<Object> get props => [errMessage];
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksSuccess(this.books);
  @override
  List<Object> get props => [books];
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;
  const FeaturedBooksFailure(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}
