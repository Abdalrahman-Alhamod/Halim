import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/home/presentation/views/functions/remove_bookmark_bottom_sheet.dart';

import '../../../../../core/themes/app_colors.dart';

class CardCourse extends StatefulWidget {
  final double followers;
  final double evaluation;
  final String category;
  final int price;
  final String name;
  final String imageUrl;
  final bool isBookmarked;
  final bool isEnabled;
  const CardCourse({
    super.key,
    required this.followers,
    required this.evaluation,
    required this.category,
    required this.price,
    required this.name,
    required this.imageUrl,
    this.isBookmarked = false,
    this.isEnabled = true,
  });

  @override
  State<CardCourse> createState() => _CardCourseState();
}

class _CardCourseState extends State<CardCourse> {
  late bool _isBookmarked;
  @override
  void initState() {
    _isBookmarked = widget.isBookmarked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRoute.kCourseDetailsView),
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
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.imageUrl),
                  ),
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
                          constraints: BoxConstraints(maxWidth: 160),
                          padding: EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 6,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromARGB(255, 113, 132, 204)
                                .withOpacity(0.25),
                          ),
                          child: AutoSizeText(
                            widget.category,
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
                                    showRemoveBookmarkBottomSheet(context);
                                  }
                                  setState(() {
                                    _isBookmarked = !_isBookmarked;
                                  });
                                }
                              : null,
                        ),
                      ],
                    ),
                    AutoSizeText(
                      widget.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${widget.price}  ',
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
                          '  ${widget.evaluation}  | ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '${widget.followers} ${LocaleKeys.CourseDetails_students.tr()}',
                          style: TextStyle(
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
