

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 import 'package:equatable/equatable.dart';
 import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
 import 'package:flutter_bloc/flutter_bloc.dart';

 import 'package:untitled3/features/home/data/models/book_model/book_model.dart';
import 'package:untitled3/features/search/presentation/data/repo/search_repo.dart';
 import 'package:untitled3/features/search/presentation/data/repo/search_repo_impl.dart';

import '../../../../../core/utils/errors/failure.dart';

 part 'search_state.dart';



class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchData) : super(SearchInitial());

  final SearchData searchData;

  static SearchCubit get(BuildContext context) => BlocProvider.of(context);

  Future<void> fetchSearchedBooks({required String bookName})async {
    emit(SearchLoading());
   
   var result = await searchData.searchData(bookName:bookName );
    result.fold((failure) {
      emit(SearchFailure(failure.errMessage));
    }, (books){
      emit(SearchSuccess(books));
    });
  }

  TextEditingController controller = TextEditingController();


}

// import 'package:equatable/equatable.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:untitled3/features/home/data/models/book_model/book_model.dart';
// import 'package:untitled3/features/search/presentation/data/repo/search_repo_impl.dart';

// part 'search_state.dart';

// class SearchCubit extends Cubit<SearchState> {
//   SearchCubit(this.searchDataImpl) : super(SearchInitial());
//   SearchDataImpl searchDataImpl;

// static SearchCubit get (BuildContext,context)=> BlocProvider.of(context);

//   void getData( {required String bookmodel}) async {
    
//  final data = await searchDataImpl.searchData(bookName:bookmodel);

//     emit(FeaturedBooksLoading());

//     data.fold((failuer) {
//       emit(SearchFailure(failuer.errMessage));
//     }, (books) {
//       emit(SearchSuccess(books.cast<BookModel>()));
//     });
//   }
  
// TextEditingController controller = TextEditingController();



//   }

