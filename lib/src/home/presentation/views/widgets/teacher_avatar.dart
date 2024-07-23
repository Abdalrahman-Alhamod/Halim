import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/context_extensions.dart';

class TeacherAvatar extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double rad;
  const TeacherAvatar(
      {super.key, required this.imageUrl, required this.name, this.rad = 35});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRoute.kMentorDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: rad,
                backgroundImage: AssetImage(imageUrl),
              ),
              const SizedBox(height: 8),
              Text(
                name,
                style: TextStyle(
                  fontSize: 12,
                  color: context.isDarkMode ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
