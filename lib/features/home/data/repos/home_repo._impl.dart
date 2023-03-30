import 'package:dio/dio.dart';

import 'package:untitled3/core/utils/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      final response = await Dio().get(
          "https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:Kids");

      List<BookModel> books = [];
      for (var iteam in response.data["items"]) {
        books.add(BookModel.fromJson(iteam));
      }
      return right(books);
    } on DioError catch (e) {
      return left(ServerFailure.fromDioError(e));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      final response = await Dio().get(
          "https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=Computer scinse");
      List<BookModel> books = [];

      for (var iteam in response.data["items"]) {
        books.add(BookModel.fromJson(iteam));
      
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
      
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
