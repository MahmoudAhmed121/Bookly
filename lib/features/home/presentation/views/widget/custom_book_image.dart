import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:untitled3/core/utils/widget/custom_loading_widget.dart';


class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.imageUrl,
  });
  final imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) => Icon(Icons.abc),
          placeholder: (context, url) => CustomLoading(
            heigh: 200,
            width: 170
          ),
        ),
      ),
    );
  }
}
