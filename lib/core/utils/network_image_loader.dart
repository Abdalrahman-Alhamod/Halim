import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../assets/app_images.dart';
import '../widgets/shimmer_box.dart';

class NetworkImageLoader extends StatelessWidget {
  const NetworkImageLoader({
    super.key,
    this.imageUrl,
    required this.width,
    required this.height,
  });

  final String? imageUrl;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl ?? '',
      width: width,
      height: height,
      fit: BoxFit.cover,
      placeholder: (context, url) => const ShimmerBox(),
      errorWidget: (context, url, error) => Container(
        color: Colors.grey.shade800,
        child: Image.asset(
          AppImages.emptyImage,
        ),
      ),
    );
  }
}
