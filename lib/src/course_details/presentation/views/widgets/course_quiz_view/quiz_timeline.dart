import 'package:flutter/material.dart';
import '../../../../../../core/utils/context_extensions.dart';
import 'package:timelines/timelines.dart';

import '../../../../../../core/themes/app_colors.dart';

class QuizTimeline extends StatelessWidget {
  final int currentPageIndex;
  final int totalPages;

  const QuizTimeline(
      {super.key, required this.currentPageIndex, required this.totalPages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: FixedTimeline.tileBuilder(
        // direction: Axis.horizontal,
        theme: TimelineThemeData(
          direction: Axis.horizontal,
          connectorTheme: const ConnectorThemeData(
            color: AppColors.primaryColor,
          ),
          indicatorTheme: const IndicatorThemeData(
            color: AppColors.primaryColor,
            size: 20,
          ),
        ),
        builder: TimelineTileBuilder.connectedFromStyle(
          itemCount: totalPages,
          indicatorStyleBuilder: (context, index) => index >= currentPageIndex
              ? IndicatorStyle.outlined
              : IndicatorStyle.dot,
          connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
          itemExtent: (context.width) / totalPages,
          firstConnectorStyle: ConnectorStyle.transparent,
          lastConnectorStyle: ConnectorStyle.transparent,
        ),
      ),
    );
    //   child: Timeline.builder(
    //     scrollDirection: Axis.horizontal,
    //     shrinkWrap: true,
    //     physics: NeverScrollableScrollPhysics(),
    //     itemCount: totalPages,
    //     itemBuilder: (context, index) => TimelineTile(
    //       node: SizedBox(
    //         height: 30,
    //         width: context.width / totalPages,
    //         child: TimelineNode.simple(
    //           indicatorSize: 20,
    //           color: index >= currentPageIndex
    //               ? Colors.grey
    //               : AppColors.primaryColor,
    //           drawEndConnector: index != totalPages - 1,
    //           drawStartConnector: index != 0,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
