import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';

import 'package:untitled3/features/home/data/repos/home_remote_repo._impl.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepoImpl) : super(NewsetBookInitial());
  HomeRepoImpl homeRepoImpl;

  static NewsetBookCubit get(context) => BlocProvider.of(context);
  Future<void> getdata({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(NewsetBookLoading());
    } else {
      emit(NewsetBookPaginationLoading());
    }

    final data = await homeRepoImpl.fetchNewsetBooks(pageNumber: pageNumber);

    data.fold((failure) {
      if (pageNumber == 0) {
        emit(NewsetBookFailure(failure.errMessage));
      } else {
        emit(NewsetBookPaginationFailure(failure.errMessage));
      }
    }, (books) {
      emit(NewsetBookSuccess(books));
    });
  }
}
