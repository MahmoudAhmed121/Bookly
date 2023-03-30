import 'package:flutter/cupertino.dart';



class CustomBookContainer extends StatelessWidget {
  const CustomBookContainer({
    super.key,required this.imageUrl,
  });
final imageUrl ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
