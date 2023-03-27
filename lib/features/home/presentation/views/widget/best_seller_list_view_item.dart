import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled3/core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 200,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsData.test),
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
              width: MediaQuery.of(context).size.width * .6,
              child: Text(
                """Harry Potter
and the Goblet of Fire SASFASFSAFSAFSAFASF""",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),


            ),
            SizedBox(height: 3,),
            Text("J.K. Rowling",
            style: TextStyle(fontSize: 14,
            color: Color(0xff616161),
            ),
            ),
             SizedBox(height: 3,),
            Row(
              children: [
               Text("19.99 €",
            style: TextStyle(fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(width: 36.3,),
            BookRating()
            ],
            )
          ],
        )
      ],
    );
  }
}


class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 12,
        ),
        SizedBox(width: 5,),
        Text("4.8",
        
        style: TextStyle(fontSize: 16,
       color: Colors.white
        ),
        ),
         SizedBox(width: 5,),
         Text("(2390)",
         style: TextStyle(
          color: Color(0xff707070),
         ),
         ),
      ],
    );
  }
}