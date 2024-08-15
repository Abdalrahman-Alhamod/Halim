class MentorAvatar {
  int? id;
  String? firstName;
  String? image;

  MentorAvatar({this.id, this.firstName, this.image});

  @override
  String toString() {
    return 'MentorAvatar(id: $id, firstName: $firstName, image: $image)';
  }

  factory MentorAvatar.fromJson(Map<String, dynamic> json) => MentorAvatar(
        id: json['id'] as int?,
        firstName: json['first_name'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'image': image,
      };

  MentorAvatar copyWith({
    int? id,
    String? firstName,
    String? image,
  }) {
    return MentorAvatar(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      image: image ?? this.image,
    );
  }
}
