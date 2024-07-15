import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/src/home/presentation/views/functions/remove_bookmark_bottom_sheet.dart';

import '../../../../../../core/assets/app_svgs.dart';

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({
    super.key,
  });

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  late bool _isPressed;
  @override
  void initState() {
    _isPressed = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (_isPressed) {
            showRemoveBookmarkBottomSheet(
              context: context,
              onConfirm: () {
                setState(() {
                  _isPressed = false;
                });
              },
            );
          } else {
            _isPressed = true;
          }
        });
      },
      icon: SvgPicture.asset(
        _isPressed ? AppSVGs.bookmark : AppSVGs.bookmarkOutlined,
        width: 36,
      ),
    );
  }
}
