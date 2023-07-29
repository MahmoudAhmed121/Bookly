import 'package:hive_flutter/adapters.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';
import 'package:untitled3/features/home/data/models/book_model/image_links.dart';


void bookBox(
    List<BookModel> responseCast, String boxName,) {
  var bookBox = Hive.box<BookModel>(boxName);
  
  bookBox.addAll(responseCast);
 
}


void bookBoxx(
    BookModel responseCast, String boxName,) {
  var bookBox = Hive.box<BookModel>(boxName);
  
  bookBox.add(responseCast);
 
}



void bookBoxxx(
    ImageLinks responseCast, String boxName,) {
  var bookBox = Hive.box<ImageLinks>(boxName);
  
  bookBox.add(responseCast);
 
}