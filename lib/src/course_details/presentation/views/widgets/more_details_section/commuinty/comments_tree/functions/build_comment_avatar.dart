import 'package:flutter/material.dart';
import 'package:halim/core/widgets/avatar_image_loader.dart';

import '../../../../../../../data/models/comment_model.dart';

PreferredSize buildCommentAvatar({
  required CommentModel data,
  required double radius,
}) {
  return PreferredSize(
    preferredSize: Size.fromRadius(radius),
    child: AvatarImageLoader(
      imageUrl: data.user?.image,
      radius: radius,
    ),
  );
}
