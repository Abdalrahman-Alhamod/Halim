
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/widgets/network_image_loader.dart';

class StaticBadge extends StatelessWidget {
  const StaticBadge({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: NetworkImageLoader(
            imageUrl: image,
            width: context.width * 0.35,
            height: context.width * 0.35,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}