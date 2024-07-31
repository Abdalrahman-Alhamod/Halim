import 'package:freezed_annotation/freezed_annotation.dart';

part 'mentor_card_model.freezed.dart';
part 'mentor_card_model.g.dart';

@freezed
class MentorCardModel with _$MentorCardModel {
  const factory MentorCardModel({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? image,
    String? headline,
  }) = _MentorCardModel;

  factory MentorCardModel.fromJson(Map<String, dynamic> json) =>
      _$MentorCardModelFromJson(json);
}
