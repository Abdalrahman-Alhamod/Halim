import 'student_card_model.dart';

extension StudentCardModelExtensions on StudentCardModel {
  String get fullName => '$firstName $lastName';
}
