import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';





part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit() : super(NewsetBookInitial());
}
