import 'mentor_card_model.dart';

extension MentorCardModelExtensions on MentorCardModel {
  String get fullName => '$firstName $lastName';
}
