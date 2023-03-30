import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled3/features/home/data/models/book%20model/book_model.dart';
import 'package:untitled3/features/home/data/repos/home_repo.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepo) : super(NewsetBookInitial());
  final HomeRepo homeRepo;

  void fetchNewsetBookss() async {
    emit(NewsetBookInitial());

    final resalt = await homeRepo.fetchNewsetBooks();

    resalt.fold((failure) {
      emit(NewsetBookFailure(failure.errMessage));
    }, (book) {
      emit(NewsetBookSuccess(book.cast()));
    });
  }
}
