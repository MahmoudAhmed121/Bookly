part of 'newset_book_cubit.dart';

abstract class NewsetBookState extends Equatable {
  const NewsetBookState();

  @override
  List<Object> get props => [];
}

class NewsetBookInitial extends NewsetBookState {}

class NewsetBookLoading extends NewsetBookState {}

class NewsetBookPaginationLoading extends NewsetBookState {}

class NewsetBookPaginationFailure extends NewsetBookState {
  final String errorMessage;
  const NewsetBookPaginationFailure(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}

class NewsetBookSuccess extends NewsetBookState {
  final List<BookModel> book;
  const NewsetBookSuccess(this.book);
  @override
  List<Object> get props => [book];
}

class NewsetBookFailure extends NewsetBookState {
  final String errorMessage;
  const NewsetBookFailure(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}
