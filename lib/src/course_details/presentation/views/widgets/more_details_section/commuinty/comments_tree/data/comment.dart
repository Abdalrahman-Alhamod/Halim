class Comment {
  final String avatar;
  final String userName;
  final String content;
  final bool isApproved;
  Comment({
    required this.avatar,
    required this.userName,
    required this.content,
    this.isApproved = false,
  });
}
