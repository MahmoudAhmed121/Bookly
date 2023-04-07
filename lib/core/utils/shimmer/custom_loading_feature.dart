import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingForfeature extends StatelessWidget {
  const CustomLoadingForfeature({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics:const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Color.fromARGB(255, 167, 167, 167),
            highlightColor: Colors.grey[50]!,
            period:const Duration(seconds: 2),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 200,
                width: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey),
              ),
            ),
          );
        });
  }
}
