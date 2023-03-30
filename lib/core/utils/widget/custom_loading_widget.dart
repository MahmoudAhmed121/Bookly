import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    this.scrollDirecation =Axis.horizontal,
    super.key,
    required this.heigh,
    required this.width,
  });
  final scrollDirecation ;
  final double heigh;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection:scrollDirecation,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Color.fromARGB(255, 167, 167, 167),
            highlightColor: Colors.grey[50]!,
            period: Duration(seconds: 2),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: heigh,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey),
              ),
            ),
          );
        });
  }
}
