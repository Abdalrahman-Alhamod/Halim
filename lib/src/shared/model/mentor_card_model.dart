class MentorCardModel {
  int? id;
  String? firstName;
  String? lastName;
  String? image;
  String? headline;

  MentorCardModel({
    this.id,
    this.firstName,
    this.lastName,
    this.image,
    this.headline,
  });

  @override
  String toString() {
    return 'MentorCardModel(id: $id, firstName: $firstName, lastName: $lastName, image: $image, headline: $headline)';
  }

  factory MentorCardModel.fromJson(Map<String, dynamic> json) {
    return MentorCardModel(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      image: json['image'] as dynamic,
      headline: json['headline'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'image': image,
        'headline': headline,
      };

  MentorCardModel copyWith({
    int? id,
    String? firstName,
    String? lastName,
    dynamic image,
    String? headline,
  }) {
    return MentorCardModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      image: image ?? this.image,
      headline: headline ?? this.headline,
    );
  }

  String get fullName {
    return '$firstName $lastName';
  }
}
