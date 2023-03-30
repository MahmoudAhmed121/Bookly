
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:untitled3/core/utils/app_router.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';
import 'package:untitled3/features/home/presentation/views/widget/custom_book_image.dart';



import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.KbookDetailsView,
          extra: bookModel,
        );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20,
                      color: Colors.white
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                   style: TextStyle(fontSize: 14,
                   color: Color(0xff616161,
                   ),
                   fontWeight: FontWeight.bold
                   ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                      style: TextStyle(fontSize: 20,
                   color: Colors.white,
                   fontWeight: FontWeight.bold
                   ),
                      ),
                      const Spacer(),
                      BookRating(
                       rating: bookModel.volumeInfo.averageRating ?? 4.3,
                       count: bookModel.volumeInfo.ratingsCount ?? 3627 ,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
