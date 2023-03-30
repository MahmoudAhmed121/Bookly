import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled3/core/utils/app_router.dart';
import 'package:untitled3/core/utils/assets.dart';
import 'package:untitled3/features/home/presentation/views/widget/book_rating.dart';

class BookListViewIteam extends StatelessWidget {
  const BookListViewIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        children: [
          Container(
            height: 200,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsData.testImage),
              ),
            ),
          ),
          SizedBox(
            width: 16.5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  """Harry Potter
    and the Goblet of Fire SASFASFSAFSAFSAFASF""",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "J.K. Rowling",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff616161),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    "19.99 €",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 36.3,
                  ),
                  BookRating()
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
