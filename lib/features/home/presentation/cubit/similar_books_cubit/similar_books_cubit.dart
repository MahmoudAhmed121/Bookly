import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';

import 'package:untitled3/features/home/data/repos/home_remote_repo._impl.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepoImpl) : super(SimilarBooksCubitInitial());
HomeRepoImpl homeRepoImpl;
   Future<void> getdata({required String category}) async {
    final data = await homeRepoImpl.featchSimilarBooks(category: category);

    data.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
