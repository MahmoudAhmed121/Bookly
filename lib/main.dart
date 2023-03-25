import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:untitled3/constants.dart';
import 'package:untitled3/features/splach/presentation/views/splach_view.dart';

void main() {
  runApp(const Splac());
}
class Splac extends StatelessWidget {
  const Splac({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mycolor
      ),
      home:const  SplachView(),
    );
  }
}