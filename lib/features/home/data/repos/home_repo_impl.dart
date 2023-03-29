import 'dart:math';

import 'package:dio/dio.dart';
import 'package:untitled3/features/home/data/models/Book%20model/book_model.dart';
import 'package:untitled3/core/utils/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:untitled3/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async {
    try {
      final response = await Dio().get(
          "https://www.googleapis.com/books/v1/volumes?q=subject:Kids&Filtering=free-ebooks");
      List<BookModel> books = [];

      for (var iteam in response.data["items"]) {
        books.add(BookModel.fromJson(iteam));
      }
      return right(books);
    } on DioError catch (e) {
      if (e.response == 400) {
        return left(ServerFailure(errorMessage: "${e.message}"));
      } else if (e.response == 401) {
        return left(ServerFailure(errorMessage: "${e.message}"));
      } else if (e.response == 404) {
        return left(ServerFailure(errorMessage: "${e.message}"));
      }
    }
    return left(ServerFailure(errorMessage: e.toString()));
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      final response = await Dio().get(
          "https://www.googleapis.com/books/v1/volumes?q=subject:Kids&Filtering=free-ebooks");
      List<BookModel> books = [];

      for (var iteam in response.data["items"]) {
        books.add(BookModel.fromJson(iteam));
      }
      return right(books);
    } on DioError catch (e) {
      if (e.response == 400) {
        return left(ServerFailure(errorMessage: "${e.message}"));
      } else if (e.response == 401) {
        return left(ServerFailure(errorMessage: "${e.message}"));
      } else if (e.response == 404) {
        return left(ServerFailure(errorMessage: "${e.message}"));
      }
    }
    return left(ServerFailure(errorMessage: e.toString()));
  }
}
