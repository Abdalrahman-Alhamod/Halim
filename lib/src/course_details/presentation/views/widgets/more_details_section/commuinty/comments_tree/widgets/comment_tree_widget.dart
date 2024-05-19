import 'package:flutter/material.dart';
import 'comment_child_widget.dart';
import 'root_comment_widget.dart';
import 'tree_theme_data.dart';
import 'package:provider/provider.dart';

typedef AvatarWidgetBuilder<T> = PreferredSize Function(
  BuildContext context,
  T value,
);
typedef ContentBuilder<T> = Widget Function(BuildContext context, T value);

class CommentTreeWidget<R, C> extends StatefulWidget {
  final R root;
  final List<C> replies;

  final AvatarWidgetBuilder<R> avatarRoot;
  final ContentBuilder<R> contentRoot;

  final AvatarWidgetBuilder<C> avatarChild;
  final ContentBuilder<C> contentChild;
  final TreeThemeData treeThemeData;

  const CommentTreeWidget(
    this.root,
    this.replies, {
    super.key,
    this.treeThemeData = const TreeThemeData(lineWidth: 1),
    required this.avatarRoot,
    required this.contentRoot,
    required this.avatarChild,
    required this.contentChild,
  });

  @override
  CommentTreeWidgetState<R, C> createState() => CommentTreeWidgetState<R, C>();
}

class CommentTreeWidgetState<R, C> extends State<CommentTreeWidget<R, C>> {
  @override
  Widget build(BuildContext context) {
    final PreferredSize avatarRoot = widget.avatarRoot(context, widget.root);
    return Provider<TreeThemeData>.value(
      value: widget.treeThemeData,
      child: Column(
        children: [
          RootCommentWidget(
            avatarRoot,
            widget.contentRoot(context, widget.root),
            isSingleComment: widget.replies.isEmpty,
          ),
          ...widget.replies.map(
            (e) => CommentChildWidget(
              isLast: widget.replies.indexOf(e) == (widget.replies.length - 1),
              avatar: widget.avatarChild(context, e),
              avatarRoot: avatarRoot.preferredSize,
              content: widget.contentChild(context, e),
            ),
          )
        ],
      ),
    );
  }
}
