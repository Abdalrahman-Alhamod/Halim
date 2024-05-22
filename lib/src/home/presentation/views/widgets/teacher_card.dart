import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class TeacherCard extends StatelessWidget {
  const TeacherCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {},
      child: Container(
        width: screenSize.width,
        height: 100,
        color: context.isDarkMode
            ? AppColors.darkColor
            : Colors.white,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(AppImages.testAvatarAlaa),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Wrap(direction: Axis.vertical, spacing: 5, children: [
                    Text(
                      'Alaa Lababedi',
                      style: TextStyle(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Marketing Analyst',
                      style: TextStyle(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Colors.white54
                            : Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ]),
                  const SizedBox(
                    width: 90,
                  ),
                  IconButton(
                    icon: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? AppColors.darkColor
                            : Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                          color: Colors.blue.withOpacity(0.9),
                          width: 2,
                        ),
                      ),
                      child: const Icon(
                          size: 25, Icons.more_horiz_sharp, color: Colors.blue),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
