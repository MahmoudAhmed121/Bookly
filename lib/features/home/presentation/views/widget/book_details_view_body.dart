
import 'package:flutter/material.dart';
import 'package:untitled3/features/home/presentation/views/widget/custom_book_details_app_bar.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,),
      child: Column(
        children: [
          CustomAppBarBookDetails(),
        ],
      ),
    );
  }
}


