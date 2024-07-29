import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/shared/model/course_card_model.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../functions/remove_bookmark_bottom_sheet.dart';

import '../../../../../core/themes/app_colors.dart';

class CardCourse extends StatefulWidget {
  final CourseCardModel courseCardModel;
  final bool isEnabled;
  const CardCourse({
    super.key,
    required this.courseCardModel,
    this.isEnabled = true,
  });

  @override
  State<CardCourse> createState() => _CardCourseState();
}

class _CardCourseState extends State<CardCourse> {
  late bool _isBookmarked;
  @override
  void initState() {
    _isBookmarked = widget.courseCardModel.isSaved ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.isEnabled) {
          GoRouter.of(context).push(AppRoute.kCourseDetailsView);
        }
      },
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.loginWithButtonDarkColor
              : AppColors.lightFlatButtonColor,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: CachedNetworkImage(
                  imageUrl: widget.courseCardModel.image ?? '',
                  width: 110,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          constraints: const BoxConstraints(maxWidth: 160),
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 6,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromARGB(255, 113, 132, 204)
                                .withOpacity(0.25),
                          ),
                          child: AutoSizeText(
                            widget.courseCardModel.subcategory?.name ?? '',
                            maxLines: 1,
                            minFontSize: 8,
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: Icon(
                            _isBookmarked
                                ? Icons.bookmark
                                : Icons.bookmark_border_outlined,
                            size: 28,
                            color: _isBookmarked ? Colors.blue : Colors.blue,
                          ),
                          onPressed: widget.isEnabled
                              ? () {
                                  if (_isBookmarked) {
                                    showRemoveBookmarkBottomSheet(
                                      context: context,
                                      onConfirm: () {
                                        setState(() {
                                          _isBookmarked = false;
                                        });
                                      },
                                    );
                                  } else {
                                    setState(() {
                                      _isBookmarked = true;
                                    });
                                  }
                                }
                              : null,
                        ),
                      ],
                    ),
                    AutoSizeText(
                      widget.courseCardModel.title ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${widget.courseCardModel.price ?? 0}  ',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.amber[400],
                          size: 25,
                        ),
                        Text(
                          '  ${widget.courseCardModel.reviewsAvg ?? 0}  | ',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '${widget.courseCardModel.enrollmentsCount ?? 0} ${LocaleKeys.CourseDetails_students.tr()}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
