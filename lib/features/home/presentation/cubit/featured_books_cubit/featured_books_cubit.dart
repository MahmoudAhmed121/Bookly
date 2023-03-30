import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';

import 'package:untitled3/features/home/data/repos/home_repo._impl.dart';





part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImpl) : super(FeaturedBooksInitial());
  HomeRepoImpl homeRepoImpl;

  void getData() async {
    final data = await homeRepoImpl.fetchFeaturedBooks();

    emit(FeaturedBooksLoading());

    data.fold((failuer) {
      emit(FeaturedBooksFailure(failuer.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books.cast<BookModel>()));
    });
  }
}
