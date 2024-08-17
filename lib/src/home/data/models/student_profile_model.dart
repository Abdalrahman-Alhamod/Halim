import '../../../account_setup/data/models/student_infomations_model.dart';

class StudentProfileModel {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? gender;
  DateTime? birthDate;
  String? image;
  String? phoneNumber;
  String? educationLevel;
  Major? major;
  int? pointsBalance;

  StudentProfileModel({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.gender,
    this.birthDate,
    this.image,
    this.phoneNumber,
    this.educationLevel,
    this.major,
    this.pointsBalance,
  });

  @override
  String toString() {
    return 'StudentProf(id: $id, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, birthDate: $birthDate, image: $image, phoneNumber: $phoneNumber, educationLevel: $educationLevel, major: $major, pointsBalance: $pointsBalance)';
  }

  factory StudentProfileModel.fromJson(Map<String, dynamic> json) =>
      StudentProfileModel(
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
        major: json['major'] == null
            ? null
            : Major.fromJson(json['major'] as Map<String, dynamic>),
        pointsBalance: json['points_balance'] as int?,
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
        'major': major?.toJson(),
        'points_balance': pointsBalance,
      };

  StudentProfileModel copyWith({
     int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? gender,
    DateTime? birthDate,
    String? image,
    String? phoneNumber,
    String? educationLevel,
    Major? major,
    int? pointsBalance,
  }) {
    return StudentProfileModel(
    id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      image: image ?? this.image,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      educationLevel: educationLevel ?? this.educationLevel,
      major: major ?? this.major,
      pointsBalance: pointsBalance ?? this.pointsBalance,
    );
  }
}
/*
import 'major.dart';

class StudentProf {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? gender;
  DateTime? birthDate;
  String image;
  String? phoneNumber;
  String? educationLevel;
  Major? major;
  int? pointsBalance;

  StudentProf({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.gender,
    this.birthDate,
    this.image,
    this.phoneNumber,
    this.educationLevel,
    this.major,
    this.pointsBalance,
  });

  @override
  String toString() {
    return 'StudentProf(id: $id, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, birthDate: $birthDate, image: $image, phoneNumber: $phoneNumber, educationLevel: $educationLevel, major: $major, pointsBalance: $pointsBalance)';
  }

  factory StudentProf.fromJson(Map<String, dynamic> json) => StudentProf(
        id: json['id'] as int?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        email: json['email'] as String?,
        gender: json['gender'] as String?,
        birthDate: json['birth_date'] == null
            ? null
            : DateTime.parse(json['birth_date'] as String),
        image: json['image'] as dynamic,
        phoneNumber: json['phone_number'] as String?,
        educationLevel: json['education_level'] as String?,
        major: json['major'] == null
            ? null
            : Major.fromJson(json['major'] as Map<String, dynamic>),
        pointsBalance: json['points_balance'] as int?,
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
        'major': major?.toJson(),
        'points_balance': pointsBalance,
      };

  StudentProf copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? gender,
    DateTime? birthDate,
    dynamic image,
    String? phoneNumber,
    String? educationLevel,
    Major? major,
    int? pointsBalance,
  }) {
    return StudentProf(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      image: image ?? this.image,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      educationLevel: educationLevel ?? this.educationLevel,
      major: major ?? this.major,
      pointsBalance: pointsBalance ?? this.pointsBalance,
    );
  }
}


 */