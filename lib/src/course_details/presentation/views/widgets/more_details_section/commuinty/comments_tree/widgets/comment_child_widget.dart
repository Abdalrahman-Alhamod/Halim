import 'package:halim/core/utils/context_extensions.dart';

import 'tree_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommentChildWidget extends StatelessWidget {
  final PreferredSizeWidget avatar;
  final Widget content;
  final bool isLast;
  final Size avatarRoot;

  const CommentChildWidget({
    super.key,
    required this.isLast,
    required this.avatar,
    required this.content,
    required this.avatarRoot,
  });

  @override
  Widget build(BuildContext context) {
    final EdgeInsets padding = context.isEnglish
        ? EdgeInsets.only(left: avatarRoot.width + 8.0, bottom: 8, top: 8)
        : EdgeInsets.only(right: avatarRoot.width + 8.0, bottom: 8, top: 8);

    return CustomPaint(
      painter: _Painter(
        isLast: isLast,
        padding: padding,
        avatarRoot: avatarRoot,
        avatarChild: avatar.preferredSize,
        pathColor: context.watch<TreeThemeData>().lineColor,
        strokeWidth: context.watch<TreeThemeData>().lineWidth,
        context: context,
      ),
      child: Container(
        padding: padding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            avatar,
            const SizedBox(
              width: 8,
            ),
            Expanded(child: content),
          ],
        ),
      ),
    );
  }
}

class _Painter extends CustomPainter {
  bool isLast = false;

  EdgeInsets padding;

  Size avatarRoot;
  Size avatarChild;
  Color pathColor;
  double strokeWidth;
  BuildContext context;

  _Painter({
    required this.isLast,
    required this.padding,
    required this.avatarRoot,
    required this.avatarChild,
    required this.pathColor,
    required this.strokeWidth,
    required this.context,
  }) {
    _paint = Paint()
      ..color = pathColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
  }

  late Paint _paint;

  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path();
    context.isEnglish
        ? path.moveTo(avatarRoot.width / 2, 0)
        : path.moveTo(size.width - avatarRoot.width / 2, 0);
    context.isEnglish
        ? path.cubicTo(
            avatarRoot.width / 2,
            0,
            avatarRoot.width / 2,
            padding.top + avatarChild.height / 2,
            avatarRoot.width,
            padding.top + avatarChild.height / 2,
          )
        : path.cubicTo(
            size.width - avatarRoot.width / 2,
            0,
            size.width - avatarRoot.width / 2,
            padding.top + avatarChild.height / 2,
            size.width - avatarRoot.width,
            padding.top + avatarChild.height / 2,
          );
    canvas.drawPath(path, _paint);

    if (!isLast) {
      context.isEnglish
          ? canvas.drawLine(
              Offset(avatarRoot.width / 2, 0),
              Offset(avatarRoot.width / 2, size.height),
              _paint,
            )
          : canvas.drawLine(
              Offset(size.width - avatarRoot.width / 2, 0),
              Offset(size.width - avatarRoot.width / 2, size.height),
              _paint,
            );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
