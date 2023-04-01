
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:untitled3/features/search/presentation/data/repo/search_repo.dart';

import '../../../../../core/utils/errors/failure.dart';
import '../../../../home/data/models/book_model/book_model.dart';



class SearchDataImpl extends SearchData {




  @override
  Future<Either<Failure, List<BookModel>>> searchData(
      {required String bookName}) async {
    try {
      var response = await Dio().get("https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks &q=intitle:$bookName");
      
      List<BookModel> books = [];
      for (var item in response.data["items"]) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } catch (error) {
      if(error is DioError){
        return Left(ServerFailure.fromDioError(error));
      }
      else{
        return Left(ServerFailure(error.toString()));
      }
    }
  }
}






















// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';

// import 'package:untitled3/core/utils/errors/failure.dart';
// import 'package:untitled3/features/home/data/models/book_model/book_model.dart';
// import 'package:untitled3/features/search/presentation/data/repo/search_repo.dart';

// class SearchDataImpl implements SearchData {
//    BookModel bookModel;
//   SearchDataImpl({
//     required this.bookModel,
//   });
//   @override
//   searchData({required bookName}) async {
//     try {
//       final response = await Dio().get(
//           "https://www.googleapis.com/books/v1/volumes?sorting=relevence&Filtering=free-ebooks&q=subject:$bookName");
//       List<BookModel> books = [];

//       for (var iteam in response.data["items"]) {
//         books.add(BookModel.fromJson(iteam));
//       }
//       return right(books);
//     } catch (e) {
//       if (e is DioError) {
//         return left(ServerFailure.fromDioError(e));
//       }
//       return left(ServerFailure(e.toString()));
//     }
//   }
// }
