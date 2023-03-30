part of 'newset_book_cubit.dart';

abstract class NewsetBookState extends Equatable {
  const NewsetBookState();

  @override
  List<Object> get props => [];
}

class NewsetBookInitial extends NewsetBookState {}
class NewsetBookLoading extends NewsetBookState {}
class NewsetBookSuccess extends NewsetBookState {
  final List<BookModel> books;

  NewsetBookSuccess(this.books);
}
class NewsetBookFailure extends NewsetBookState {
  final String error;

  NewsetBookFailure(this.error);

}