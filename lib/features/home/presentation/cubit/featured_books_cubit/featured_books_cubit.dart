import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';

import 'package:untitled3/features/home/data/repos/home_remote_repo._impl.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImpl) : super(FeaturedBooksInitial());
  HomeRepoImpl homeRepoImpl;
  static FeaturedBooksCubit get(context) => BlocProvider.of(context);
  Future<void> getData({int pageNumber = 0}) async {
    final data = await homeRepoImpl.fetchFeaturedBooks(pageNumber: pageNumber);
    if (pageNumber == 0) {
      emit(FeaturedBooksLoading());
    } else {
      emit(FeaturedPaginationLoading());
    }

    data.fold((failuer) {
      if (pageNumber == 0) {
        
        emit(FeaturedBooksFailure(failuer.errMessage));
      } else {
        emit(FeaturedPaginationFailure(errMessage: failuer.errMessage));
      }
    }, (books) {
      emit(FeaturedBooksSuccess(books.cast<BookModel>()));
    });
  }
}
