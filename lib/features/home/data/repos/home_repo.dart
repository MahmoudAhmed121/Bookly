import 'package:dartz/dartz.dart';

import '../../../../core/utils/errors/failure.dart';
import '../models/Book model/book_model.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookModel>>> fetchNewsBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}