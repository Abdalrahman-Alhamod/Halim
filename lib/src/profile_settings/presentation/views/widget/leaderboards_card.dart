import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../../core/themes/app_colors.dart';

class LeaderboardsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int hours;
  final int rank;

  const LeaderboardsCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.hours,
    required this.rank,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.kProfileStudentView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Container(
          width: screenSize.width,
          height: 90,
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.darkFlatButtonColor
                : AppColors.lightFlatButtonColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  height: 80,
                  width: 70,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(right: 50, bottom: 40),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Center(
                          child: Text(
                            '$rank',
                            style: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: context.isDarkMode ? Colors.white : Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white38
                      : Colors.white70,
                ),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AutoSizeText(
                        '$hours',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.white,
                        ),
                        maxLines: 1,
                        minFontSize: 10,
                      ),
                      AutoSizeText(
                        '$hours',
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        minFontSize: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
