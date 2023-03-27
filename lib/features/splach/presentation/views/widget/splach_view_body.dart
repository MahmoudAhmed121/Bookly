import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled3/core/utils/app_router.dart';


import 'package:untitled3/core/utils/assets.dart';


class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody> {
  @override
  void initState() {
    navigatHome();

    super.initState();
  }

  void navigatHome() {
    Future.delayed(Duration(seconds: 3), () {
    GoRouter.of(context).push(AppRouter.homepage);
    },
    );
  }






  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo ),
      ],
    );
  }
}
