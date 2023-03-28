import 'package:flutter/material.dart';

import 'package:untitled3/features/home/presentation/views/widget/book_rating.dart';
import 'package:untitled3/features/home/presentation/views/widget/books_details_action.dart';

import 'package:untitled3/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:untitled3/features/home/presentation/views/widget/custom_book_container_.dart';

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
          CustomAppBarBookDetails(),
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
        ],
      ),
    );
  }
}
