import 'package:flutter/material.dart';
import '../../../../../../../../../core/helpers/date_time_helper.dart';
import '../../../../../../../../../core/widgets/avatar_image_loader.dart';
import '../../../../../../../data/models/anouncement_box_model.dart';

import '../../../../../../../../../core/themes/app_colors.dart';

class AnnouncementBox extends StatelessWidget {
  const AnnouncementBox({
    super.key,
    required this.announcementBoxModel,
  });
  final AnnouncementBoxModel announcementBoxModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withAlpha(30),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AvatarImageLoader(
                    imageUrl: announcementBoxModel.mentor?.image ?? '',
                    radius: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          announcementBoxModel.mentor?.fullName ?? '',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          announcementBoxModel.title ?? '',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          announcementBoxModel.content ?? '',
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            DateTimeHelper.format(
                              announcementBoxModel.createdAt ?? DateTime.now(),
                              DateTimeFormat.dateAndTime,
                            ),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ],
    );
  }
}
