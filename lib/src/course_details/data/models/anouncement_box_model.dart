import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../../../shared/model/mentor_card_model.dart';
part 'anouncement_box_model.freezed.dart';
part 'anouncement_box_model.g.dart';

@freezed
class AnnouncementBoxModel with _$AnnouncementBoxModel {
  const factory AnnouncementBoxModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'mentor') MentorCardModel? mentor,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _AnnouncementBoxModel;

  factory AnnouncementBoxModel.fromJson(Map<String, Object?> json) =>
      _$AnnouncementBoxModelFromJson(json);
}
