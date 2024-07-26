class UserEntity {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? gender;
  String? birthDate;
  dynamic image;
  String? phoneNumber;
  String? accessToken;

  UserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.gender,
    required this.birthDate,
    required this.image,
    required this.phoneNumber,
    required this.accessToken,
  });
}
