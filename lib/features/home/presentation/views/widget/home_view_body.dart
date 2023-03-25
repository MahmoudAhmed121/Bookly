import 'package:flutter/material.dart';

import 'package:untitled3/features/home/presentation/views/widget/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
      ],
    );
  }
}

