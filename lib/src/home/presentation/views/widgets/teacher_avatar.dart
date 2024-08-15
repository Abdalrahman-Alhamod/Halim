import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/shared/model/mentor_card_model.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/navigation_extra_keys.dart';
import '../../../../../core/widgets/avatar_image_loader.dart';

class TeacherAvatar extends StatelessWidget {
  const TeacherAvatar({
    super.key,
    required this.mentorCardModel,
  });

  final MentorCardModel mentorCardModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(
          AppRoute.kMentorDetailsView,
          extra: {
            NavKeys.mentorId: -1,
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: Column(
            children: [
              AvatarImageLoader(
                imageUrl: mentorCardModel.image,
                radius: 30,
              ),
              const SizedBox(height: 8),
              AutoSizeText(
                mentorCardModel.firstName ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
