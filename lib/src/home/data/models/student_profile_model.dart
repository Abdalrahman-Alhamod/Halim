class StudentProfileModel {
  int? id;
  String? firstName;
  String? lastName;
  String? image;
  String? educationLevel;
  int? pointsBalance;

  StudentProfileModel({
    this.id,
    this.firstName,
    this.lastName,
    this.image,
    this.educationLevel,
    this.pointsBalance,
  });

  @override
  String toString() {
    return 'StudentModel(id: $id, firstName: $firstName, lastName: $lastName, image: $image,  educationLevel: $educationLevel, pointsBalance: $pointsBalance)';
  }

  factory StudentProfileModel.fromJson(Map<String, dynamic> json) =>
      StudentProfileModel(
        id: json['id'] as int?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        image: json['image'] as String?,
        educationLevel: json['education_level'] as String?,
        pointsBalance: json['points_balance'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'image': image,
        'education_level': educationLevel,
        'points_balance': pointsBalance,
      };

  StudentProfileModel copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? image,
    String? educationLevel,
    int? pointsBalance,
  }) {
    return StudentProfileModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      image: image ?? this.image,
      educationLevel: educationLevel ?? this.educationLevel,
      pointsBalance: pointsBalance ?? this.pointsBalance,
    );
  }
}
