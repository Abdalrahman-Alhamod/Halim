class UserModel {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? gender;
  String? birthDate;
  dynamic image;
  String? phoneNumber;
  String? accessToken;
  UserModel({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.gender,
    this.birthDate,
    this.image,
    this.phoneNumber,
    this.accessToken,
  });

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, birthDate: $birthDate, image: $image, phoneNumber: $phoneNumber, accessToken: $accessToken)';
  }

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'] as int?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        email: json['email'] as String?,
        gender: json['gender'] as String?,
        birthDate: json['birth_date'] as String?,
        image: json['image'] as dynamic,
        phoneNumber: json['phone_number'] as String?,
        accessToken: json['access_token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'gender': gender,
        'birth_date': birthDate,
        'image': image,
        'phone_number': phoneNumber,
        'access_token': accessToken,
      };

  UserModel copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? gender,
    String? birthDate,
    dynamic image,
    String? phoneNumber,
    String? accessToken,
  }) {
    return UserModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      image: image ?? this.image,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      accessToken: accessToken ?? this.accessToken,
    );
  }
}
