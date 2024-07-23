import '../../../../../../../../../core/utils/context_extensions.dart';

import 'tree_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RootCommentWidget extends StatelessWidget {
  final PreferredSizeWidget avatar;
  final Widget content;
  final bool isSingleComment;
  const RootCommentWidget(this.avatar, this.content,
      {super.key, required this.isSingleComment});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: isSingleComment
          ? null
          : RootPainter(
              avatar.preferredSize,
              context.watch<TreeThemeData>().lineColor,
              context.watch<TreeThemeData>().lineWidth,
              context,
            ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          avatar,
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: content,
          )
        ],
      ),
    );
  }
}

class RootPainter extends CustomPainter {
  Size avatar;
  late Paint _paint;
  Color pathColor;
  double strokeWidth;
  BuildContext context;
  RootPainter(this.avatar, this.pathColor, this.strokeWidth, this.context) {
    _paint = Paint()
      ..color = pathColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
      context.isEnglish
          ? Offset(avatar.width / 2, avatar.height)
          : Offset(size.width - avatar.width / 2, avatar.height),
      context.isEnglish
          ? Offset(avatar.width / 2, size.height)
          : Offset(size.width - avatar.width / 2, size.height),
      _paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
