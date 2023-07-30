import 'package:hive_flutter/adapters.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';

void fetchNewsetBook(
    List<BookModel> responseBooks, String boxName,) {
  var bookBox = Hive.box<BookModel>(boxName);
  
  bookBox.addAll(responseBooks);
 
}