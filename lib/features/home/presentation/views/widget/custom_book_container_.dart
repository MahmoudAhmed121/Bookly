import 'package:flutter/cupertino.dart';
import 'package:untitled3/core/utils/assets.dart';

class CustomBookContainer extends StatelessWidget {
  const CustomBookContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        width: 170,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsData.test),
          ),
        ),
      ),
    );
  }
}
