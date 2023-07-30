// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:untitled3/constants.dart';
import 'package:untitled3/core/utils/errors/failure.dart';
import 'package:untitled3/core/utils/func/feature_book_fun.dart';
import 'package:untitled3/core/utils/func/news_book_fun.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';
import 'package:untitled3/features/home/data/repos/home_local_repo.dart';

import 'home_remote_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeLocalRepo homeLocalRepo;
  HomeRepoImpl({
    required this.homeLocalRepo,
  });
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks(
      {int pageNumber = 0}) async {
    try {
      final response = await Dio().get(
          "https://www.googleapis.com/books/v1/volumes?sorting=relevence&Filtering=free-ebooks&q=subject:drama&startIndex=${pageNumber * 10}");

      List<dynamic> booksDynamic = response.data["items"];
      List<BookModel> bookModel =
          booksDynamic.map((e) => BookModel.fromJson(e)).toList();

      fetchFeaturedBook(bookModel, kBookModelBook);

      var myBookBox = homeLocalRepo.fetchFeaturedBooks(pageNumber: pageNumber);

      if (myBookBox.isNotEmpty) {
        return right(myBookBox);
      }
      return right(bookModel);
    } on DioError catch (e) {
      var myBookBox = homeLocalRepo.fetchFeaturedBooks(pageNumber: pageNumber);

      if (myBookBox.isNotEmpty) {
        return right(myBookBox);
      }
      return left(ServerFailure.fromDioError(e));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks(
      {int pageNumber = 0}) async {
    try {
      final response = await Dio().get(
          "https://www.googleapis.com/books/v1/volumes?sorting=relevence&Filtering=free-ebooks&q=subject:fiction&startIndex=${pageNumber * 10}");
      List<dynamic> listDynamic = response.data["items"];
      List<BookModel> listBook =
          listDynamic.map((e) => BookModel.fromJson(e)).toList();
      fetchNewsetBook(listBook, kNewsetBooksBook);

      var bookLocal = homeLocalRepo.fetchNewsetBooks(pageNumber: pageNumber);
      print("newsssssssssssssssssssssssss $bookLocal");
      if (bookLocal.isNotEmpty) {
        return right(bookLocal);
      }
      return right(listBook);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchSimilarBooks(
      {required String category}) async {
    try {
      final response = await Dio().get(
          "https://www.googleapis.com/books/v1/volumes?sorting=relevence&Filtering=free-ebooks&q=subject:zombies");
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
