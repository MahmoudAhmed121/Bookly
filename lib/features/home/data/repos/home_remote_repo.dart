import 'package:dartz/dartz.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';

import '../../../../core/utils/errors/failure.dart';



abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks({int pageNumber = 0});
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks({int pageNumber = 0});
  Future<Either<Failure, List<BookModel>>> featchSimilarBooks({required String category});
}
