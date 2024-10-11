import 'package:flutter/material.dart';
import '../../../../../core/widgets/avatar_image_loader.dart';
import '../../../data/models/avatar_model.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/assets/app_font.dart';
import '../../../../../core/themes/app_colors.dart';

class AchievementsAvatar extends StatelessWidget {
  const AchievementsAvatar({
    super.key,
    required this.avatarModel,
  });
  final AvatarModel avatarModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          radius: 105,
          child: AvatarImageLoader(
            imageUrl: avatarModel.image,
            radius: 100,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          avatarModel.name ?? '',
          style: TextStyle(
            fontSize: 28,
            fontFamily: context.isEnglish ? AppFonts.satisfy : AppFonts.zahey,
            shadows: const [
              Shadow(
                blurRadius: 10.0,
                color: Colors.blue,
                offset: Offset(0, 0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
