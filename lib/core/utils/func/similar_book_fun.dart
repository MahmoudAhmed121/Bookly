import 'package:hive_flutter/adapters.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';

void featchSimilarBook(
    List<BookModel> responseCast, String boxName,) {
  var bookBox = Hive.box<BookModel>(boxName);
  
  bookBox.addAll(responseCast);
 
}