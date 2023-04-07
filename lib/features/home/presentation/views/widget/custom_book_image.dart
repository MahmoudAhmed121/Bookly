import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:untitled3/core/utils/shimmer/custom_loading_feature.dart';


class CustomBookImage extends StatelessWidget {
   CustomBookImage({

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
          errorWidget: (context, url, error) =>const Icon(Icons.abc),
          placeholder: (context, url) => const CustomLoadingForfeature(
          
          ),
        ),
      ),
    );
  }
}
