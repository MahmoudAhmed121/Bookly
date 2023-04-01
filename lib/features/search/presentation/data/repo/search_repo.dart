

import 'package:dartz/dartz.dart';

import '../../../../../core/utils/errors/failure.dart';
import '../../../../home/data/models/book_model/book_model.dart';

abstract  class SearchData {
 Future<Either<Failure, List<BookModel>>>  searchData({required String bookName});
} 