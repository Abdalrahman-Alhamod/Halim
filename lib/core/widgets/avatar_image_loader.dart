import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'avatar_error_widget.dart';
import 'shimmer_box.dart';

class AvatarImageLoader extends StatelessWidget {
  const AvatarImageLoader({
    super.key,
    required this.imageUrl,
    required this.radius,
  });

  final String? imageUrl;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CachedNetworkImage(
        imageUrl: imageUrl ?? '',
        fit: BoxFit.cover,
        width: radius * 2,
        height: radius * 2,
        placeholder: (context, url) => const ShimmerBox(),
        errorWidget: (context, url, error) => const AvatarErrorWidget(),
      ),
    );
  }
}
