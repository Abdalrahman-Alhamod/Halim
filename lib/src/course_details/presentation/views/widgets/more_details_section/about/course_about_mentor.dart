import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/shared/model/mentor_card_model.dart';
import 'package:halim/src/shared/model/mentor_card_model_extension.dart';
import '../../../../../../../core/utils/app_route.dart';
import '../../../../../../../core/utils/context_extensions.dart';
import '../../../../../../../core/widgets/shimmer_box.dart';

class CourseAboutMentor extends StatelessWidget {
  const CourseAboutMentor({
    super.key,
    required this.mentorCardModel,
  });
  final MentorCardModel mentorCardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.kMentorDetailsView);
      },
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: mentorCardModel.image ?? '',
                    fit: BoxFit.cover,
                    width: 56,
                    height: 56,
                    placeholder: (context, url) => const ShimmerBox(),
                  ),
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
