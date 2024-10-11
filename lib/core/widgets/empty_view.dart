import 'package:flutter/material.dart';
import '../utils/context_extensions.dart';

import '../assets/app_images.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    super.key,
    this.width,
  });
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppImages.notFound,
        width: width ?? context.width * 0.7,
      ),
    );
  }
}
