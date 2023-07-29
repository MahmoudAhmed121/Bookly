import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';


import 'package:untitled3/features/home/data/repos/home_repo._impl.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepoImpl) : super(NewsetBookInitial());
  HomeRepoImpl homeRepoImpl;

  
  Future<void> getdata() async {
    final data = await homeRepoImpl.fetchNewsetBooks();

    data.fold((failure) {
      emit(NewsetBookFailure(failure.errMessage));
    }, (books) {
      emit(NewsetBookSuccess(books));
    });
  }
}