import '../models/book_model/book_model.dart';

abstract class HomeLocalRepo {
  List<BookModel> fetchNewsetBooks();
  List<BookModel> fetchFeaturedBooks({int pageNumber = 0});
  List<BookModel> featchSimilarBooks({required String category});
}
