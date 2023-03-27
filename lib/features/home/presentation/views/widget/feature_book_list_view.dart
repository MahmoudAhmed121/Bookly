import 'package:flutter/material.dart';
import 'package:untitled3/features/home/presentation/views/widget/custom_container_.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: MediaQuery.of(context).size.height *.3,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return CustomContainer();
        },
      ),
    );
  }
}