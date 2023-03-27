import 'package:flutter/cupertino.dart';
import 'package:untitled3/core/utils/assets.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height:50,
      width: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsData.test),
        ),
      ),
    );
  }
}
