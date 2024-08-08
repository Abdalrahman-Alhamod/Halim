class Stud {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? gender;
  DateTime? birthDate;
  String? image;
  String? phoneNumber;
  String? educationLevel;
  List<dynamic>? interests;

  Stud({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.gender,
    this.birthDate,
    this.image,
    this.phoneNumber,
    this.educationLevel,
    this.interests,
  });

  @override
  String toString() {
    return 'Stud(id: $id, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, birthDate: $birthDate, image: $image, phoneNumber: $phoneNumber, educationLevel: $educationLevel, interests: $interests)';
  }

  factory Stud.fromJson(Map<String, dynamic> json) => Stud(
        id: json['id'] as int?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        email: json['email'] as String?,
        gender: json['gender'] as String?,
        birthDate: json['birth_date'] == null
            ? null
            : DateTime.parse(json['birth_date'] as String),
        image: json['image'] as String?,
        phoneNumber: json['phone_number'] as String?,
        educationLevel: json['education_level'] as String?,
        interests: json['interests'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'gender': gender,
        'birth_date': birthDate?.toIso8601String(),
        'image': image,
        'phone_number': phoneNumber,
        'education_level': educationLevel,
        'interests': interests,
      };

  Stud copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? gender,
    DateTime? birthDate,
    String? image,
    String? phoneNumber,
    String? educationLevel,
    List<dynamic>? interests,
  }) {
    return Stud(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      image: image ?? this.image,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      educationLevel: educationLevel ?? this.educationLevel,
      interests: interests ?? this.interests,
    );
  }
}
