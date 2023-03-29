import 'package:dio/dio.dart';
import 'package:untitled3/features/home/data/models/Book%20model/book_model.dart';
import 'package:untitled3/core/utils/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:untitled3/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() {
   final response =Dio().get("https://www.googleapis.com/books/v1/volumes?q=subject:Kids&Filtering=free-ebooks");


    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
  
    throw UnimplementedError();
  }

}