
import 'package:flutter/material.dart';

import '../assets/app_images.dart';

class AvatarErrorWidget extends StatelessWidget {
  const AvatarErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade400,
      child: Image.asset(
        AppImages.emptyAvatar,
      ),
    );
  }
}
