import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/avatar_image_loader.dart';
import '../../../data/models/student_leaderboards_model.dart';

class LeaderboardsCard extends StatefulWidget {
  final StudentLeaderboards studentLeaderboards;

  const LeaderboardsCard({
    super.key,
    required this.studentLeaderboards,
  });

  @override
  State<LeaderboardsCard> createState() => _LeaderboardsCardState();
}

class _LeaderboardsCardState extends State<LeaderboardsCard> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        // GoRouter.of(context).push(AppRoute.kProfileStudentView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
        child: Container(
          width: screenSize.width,
          height: 100,
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
                  child:
                   AvatarImageLoader(
                    imageUrl: widget.studentLeaderboards.image,
                    radius: 28,
                  ),
                ),
              ),
              //  Padding(
              //   padding: const EdgeInsets.all(15),
              //   child: SizedBox(
              //     height: 80,
              //     width: 70,
              //     child: Container(
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         image: DecorationImage(
              //           image: AssetImage( widget.studentLeaderboards.image,),
              //           fit: BoxFit.contain,
              //         ),
              //       ),
              //       child: Container(
              //         padding: const EdgeInsets.only(right: 50, bottom: 40),
              //         child: Container(
              //           decoration: const BoxDecoration(
              //               color: Colors.amber,
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(50))),
              //           child: Center(
              //             child: Text(
              //               '$rank',
              //               style: const TextStyle(
              //                   color: Colors.red,
              //                   fontWeight: FontWeight.w600,
              //                   fontSize: 16),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Expanded(
                child: Text(
                  '${widget.studentLeaderboards.firstName??''} ${widget.studentLeaderboards.lastName??''}',
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
                        '${widget.studentLeaderboards.avgTime!
                            .round()}',
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
                           '${widget.studentLeaderboards.avgTime!
                            .round()}'
                           ,
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
