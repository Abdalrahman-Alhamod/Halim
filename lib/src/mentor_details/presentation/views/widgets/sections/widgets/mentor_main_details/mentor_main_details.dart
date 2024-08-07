import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/mentor_details/presentation/manager/mentor_details_cubit/mentor_details_cubit.dart';
import '../../../../../../../../core/utils/app_route.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../../core/assets/app_svgs.dart';
import '../../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../../core/widgets/avatar_image_loader.dart';
import '../../../../../../data/models/mentor_details_model.dart';
import 'mentor_main_details_vertical_divider.dart';
import 'mentor_main_details_vertical_info.dart';
import 'mentor_main_section_button.dart';

class MentorMainDetails extends StatelessWidget {
  const MentorMainDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MentorDetailsModel mentorDetailsModel = const MentorDetailsModel();
    return BlocConsumer<MentorDetailsCubit, MentorDetailsState>(
      buildWhen: context.read<MentorDetailsCubit>().buildMentorDetailsnWhen,
      listenWhen: context.read<MentorDetailsCubit>().listenMentorDetailsWhen,
      listener: context.read<MentorDetailsCubit>().listenMentorDetails,
      builder: (context, state) {
        state.whenOrNull(
          fetchMentorDetailsSuccess: (stateMentorDetailsModel, message) {
            mentorDetailsModel = stateMentorDetailsModel;
          },
        );
        return context.read<MentorDetailsCubit>().buildMentorMainDetails(
              context: context,
              state: state,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AvatarImageLoader(
                    imageUrl: mentorDetailsModel.image,
                    radius: 70,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    mentorDetailsModel.fullName,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    mentorDetailsModel.headline ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: context.isDarkMode
                          ? Colors.grey.shade400
                          : Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MentorMainDetailsVerticalInfo(
                          num: '${mentorDetailsModel.coursesCount ?? 0}',
                          label:
                              LocaleKeys.CourseDetails_Mentor_coursesNum.tr(),
                        ),
                        const MentorMainDetailsVerticalDivider(),
                        MentorMainDetailsVerticalInfo(
                          num: '${mentorDetailsModel.enrollmentsNumber ?? 0}',
                          label: LocaleKeys.CourseDetails_students.tr(),
                        ),
                        const MentorMainDetailsVerticalDivider(),
                        MentorMainDetailsVerticalInfo(
                          num: '${mentorDetailsModel.reviewsCount ?? 0}',
                          label: LocaleKeys.CourseDetails_reviews.tr(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: MentorMainSectionButton(
                          onPressed: () {
                            GoRouter.of(context).push(
                              AppRoute.kChatView,
                              extra: LocaleKeys
                                  .CourseDetails_Test_courseMentorName.tr(),
                            );
                          },
                          svgPicture: AppSVGs.chatFilled,
                          title: LocaleKeys.CourseDetails_Mentor_message.tr(),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: MentorMainSectionButton(
                          onPressed: () async {
                            await launchUrl(
                              Uri(
                                scheme: 'mailto',
                                path: mentorDetailsModel.email ??
                                    'example@gmail.com',
                              ),
                            );
                          },
                          svgPicture: AppSVGs.email,
                          title: LocaleKeys.CourseDetails_Mentor_email.tr(),
                          isOutlined: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
      },
    );
  }
}
