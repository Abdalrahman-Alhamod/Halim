import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class TeacherCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String specialization;
  const TeacherCard(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.specialization});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {},
      child: Container(
        width: screenSize.width,
        height: 100,
        color: context.isDarkMode ? AppColors.darkColor : Colors.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imageUrl),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Wrap(direction: Axis.vertical, spacing: 5, children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        specialization,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ]),
                    const Spacer(),
                    IconButton(
                      icon: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                            color: Colors.blue.withOpacity(0.9),
                            width: 2,
                          ),
                        ),
                        child: const Icon(
                            size: 25,
                            Icons.more_horiz_sharp,
                            color: Colors.blue),
                      ),
                      onPressed: () {
                        GoRouter.of(context).push(AppRoute.kMentorDetailsView);
                      },
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
