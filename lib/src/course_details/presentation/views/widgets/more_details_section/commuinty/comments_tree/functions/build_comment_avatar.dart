 import 'package:flutter/material.dart';

import '../data/comment.dart';

PreferredSize buildCommentAvatar({
    required Comment data,
    required double radius,
  }) {
    return PreferredSize(
      preferredSize: Size.fromRadius(radius),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.grey,
        backgroundImage: AssetImage(data.avatar),
      ),
    );
  }