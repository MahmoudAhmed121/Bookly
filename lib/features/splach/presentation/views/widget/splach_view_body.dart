import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/constants.dart';
import 'package:untitled3/core/utils/assets.dart';
import 'package:untitled3/features/home/presentation/views/home_view.dart';

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
      Get.to(() => HomeView(),
          transition: Transition.fade, duration: myDuration);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
      ],
    );
  }
}
