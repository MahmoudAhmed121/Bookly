import 'package:flutter/material.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';

import 'package:untitled3/features/home/presentation/views/widget/book_rating.dart';
import 'package:untitled3/features/home/presentation/views/widget/books_details_action.dart';

import 'package:untitled3/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:untitled3/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:untitled3/features/home/presentation/views/widget/similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const CustomAppBarBookDetails(),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 80),
              child: CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? "",
              ),
            ),
            Text(
              bookModel.volumeInfo.title!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Opacity(
              opacity: 0.7,
              child: Text(
                bookModel.volumeInfo.authors?[0] ?? "",
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xff707070),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
              count: bookModel.volumeInfo.ratingsCount ?? 2123,
              rating: bookModel.volumeInfo.ratingsCount ?? 4.2,
            ),
            const SizedBox(
              height: 37,
            ),
            BooksAction(bookModel: bookModel),
            const SizedBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You can also like",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SimilarBooksListView(),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
