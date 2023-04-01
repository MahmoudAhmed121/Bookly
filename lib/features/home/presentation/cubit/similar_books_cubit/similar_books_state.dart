part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksCubitInitial extends SimilarBooksState {}
class NewsetBookLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> book;
   SimilarBooksSuccess(this.book);
}

class SimilarBooksFailure extends SimilarBooksState {
  final String errorMessage;
  const SimilarBooksFailure(this.errorMessage);
}
