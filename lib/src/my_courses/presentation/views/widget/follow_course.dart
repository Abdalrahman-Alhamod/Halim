import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../core/themes/app_colors.dart';

class FollowCourse extends StatefulWidget {
  final String name;
  final int? hours;
  final int? min;
  final int? completedEpisodes;
  final int? allEpisodes;
  final String imageUrl;
  const FollowCourse(
      {super.key,
      required this.name,
      this.hours,
      this.min,
      this.completedEpisodes,
      this.allEpisodes,
      required this.imageUrl});

  @override
  State<FollowCourse> createState() => _FollowCourseState();
}

class _FollowCourseState extends State<FollowCourse> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: screenSize.width * 0.90,
        height: 150,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.darkFlatButtonColor
              : AppColors.lightFlatButtonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.imageUrl),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Wrap(
                direction: Axis.vertical,
                spacing: 15,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Colors.white
                            : Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      '${widget.hours} hrs ${widget.min} mins',
                      style: TextStyle(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Colors.white54
                            : Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  // ProgressLine(
                  //   allEpisodes: 124,
                  //   completedEpisodes: 93,
                  // ),
                  LinearPercentIndicator(
                    alignment: MainAxisAlignment.start,
                    width: 150.0,
                    animation: true,
                    lineHeight: 9.0,
                    percent: widget.completedEpisodes! / widget.allEpisodes!,
                    barRadius: const Radius.circular(10),
                    backgroundColor: Colors.grey[300]!,
                    progressColor: Colors.blue,
                    clipLinearGradient: true,
                    trailing: Text(
                      "${widget.completedEpisodes} / ${widget.allEpisodes}",
                      style: TextStyle(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Colors.white54
                            : Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
