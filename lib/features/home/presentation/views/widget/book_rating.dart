import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});

      
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final num count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 12,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          rating.toString(),
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          count.toString(),
          style: TextStyle(
            color: Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
