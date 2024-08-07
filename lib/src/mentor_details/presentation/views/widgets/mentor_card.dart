import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/shared/model/mentor_card_model.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../../core/utils/navigation_extra_keys.dart';
import '../../../../../core/widgets/avatar_image_loader.dart';

class MentorCard extends StatelessWidget {
  const MentorCard({
    super.key,
    required this.mentorCardModel,
  });
  final MentorCardModel mentorCardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRoute.kMentorDetailsView,
          extra: {
            NavKeys.mentorId: mentorCardModel.id ?? -1,
          },
        );
      },
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                AvatarImageLoader(
                  image: mentorCardModel.image,
                  radius: 28,
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        mentorCardModel.fullName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AutoSizeText(
                        mentorCardModel.headline ?? '',
                        style: TextStyle(
                          color: context.isDarkMode
                              ? Colors.grey.shade400
                              : Colors.grey.shade600,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
