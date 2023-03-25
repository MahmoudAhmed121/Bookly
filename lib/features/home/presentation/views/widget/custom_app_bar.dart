
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled3/core/utils/assets.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,
      vertical: 40
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
          height: 18,
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              ),)
        ],
      ),
    );
  }
}
