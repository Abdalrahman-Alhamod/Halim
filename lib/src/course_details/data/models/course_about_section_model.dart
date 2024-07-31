import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/model/mentor_card_model.dart';
import 'keyword_model.dart';

part 'course_about_section_model.freezed.dart';
part 'course_about_section_model.g.dart';

@freezed
class CourseAboutSectionModel with _$CourseAboutSectionModel {
  const factory CourseAboutSectionModel({
    int? id,
    String? description,
    @JsonKey(name: 'mentor') MentorCardModel? mentor,
    List<KeywordModel>? keywords,
  }) = _CourseAboutSectionModel;

  factory CourseAboutSectionModel.fromJson(Map<String, dynamic> json) =>
      _$CourseAboutSectionModelFromJson(json);
}
