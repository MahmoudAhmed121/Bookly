import 'package:hive_flutter/adapters.dart';
import 'package:untitled3/constants.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';
import 'package:untitled3/features/home/data/repos/home_local_repo.dart';

class HomeLocalImpl extends HomeLocalRepo {
  @override
  List<BookModel> featchSimilarBooks({required String category}) {
    var bookLocal = Hive.box<BookModel>(kImageLinksBook);

    return bookLocal.values.toList();
  }

  @override
  List<BookModel> fetchFeaturedBooks({int pageNumber = 0}) {
    var bookLocal = Hive.box<BookModel>(kBookModelBook);
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;

    int lenght = bookLocal.values.length;

    if (startIndex >= lenght || endIndex > lenght) {
      print("$lenght");
      return [];
    }

    return bookLocal.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookModel> fetchNewsetBooks() {
    var bookLocal = Hive.box<BookModel>(kVolumeInfoBook);

    return bookLocal.values.toList();
  }
}
