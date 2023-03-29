import 'package:flutter/material.dart';
import 'package:untitled3/features/home/presentation/views/widget/best_seller_list_view_item.dart';

import 'package:untitled3/features/home/presentation/views/widget/book_rating.dart';
import 'package:untitled3/features/home/presentation/views/widget/books_details_action.dart';

import 'package:untitled3/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:untitled3/features/home/presentation/views/widget/custom_book_container_.dart';
import 'package:untitled3/features/home/presentation/views/widget/similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomAppBarBookDetails(),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: CustomBookContainer(),
          ),
          Text(
            "The Jungle Book",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Rudyard Kipling",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff707070),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 37,
          ),
          BooksAction(),
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SimilarBooksListView(),
        ],
      ),
    );
  }
}
