import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
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
          "4.8",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "(2390)",
          style: TextStyle(
            color: Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
