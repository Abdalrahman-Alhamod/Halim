class StudentInfomationsModel {
  int? id;
  int? pin;
  String? firstName;
  String? lastName;
  String? email;
  String? gender;
  String? birthDate;
  dynamic image;
  String? phoneNumber;
  String? educationLevel;

  StudentInfomationsModel({
    this.id,
    this.pin,
    this.firstName,
    this.lastName,
    this.email,
    this.gender,
    this.birthDate,
    this.image,
    this.phoneNumber,
    this.educationLevel,
  });

  @override
  String toString() {
    return 'StudentInfomationsModel(id: $id,pin: $pin, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, birthDate: $birthDate, image: $image, phoneNumber: $phoneNumber, educationLevel: $educationLevel)';
  }

  factory StudentInfomationsModel.fromJson(Map<String, dynamic> json) {
    return StudentInfomationsModel(
      id: json['id'] as int?,
      pin: json['pin'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      birthDate: json['birth_date'] as String?,
      image: json['image'] as String?,
      phoneNumber: json['phone_number'] as String?,
      educationLevel: json['education_level'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'PIN': pin,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'gender': gender,
        'birth_date': birthDate,
        'phone_number': phoneNumber,
        'education_level': educationLevel,
      };

  StudentInfomationsModel copyWith({
    int? id,
    int? pin,
    String? firstName,
    String? lastName,
    String? email,
    String? gender,
    String? birthDate,
    dynamic image,
    String? phoneNumber,
    String? educationLevel,
  }) {
    return StudentInfomationsModel(
      id: id ?? this.id,
      pin: pin ?? this.pin,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      image: image ?? this.image,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      educationLevel: educationLevel ?? this.educationLevel,
    );
  }
}
