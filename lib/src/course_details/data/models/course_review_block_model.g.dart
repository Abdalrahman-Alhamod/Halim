// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_review_block_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseReviewBlockModelImpl _$$CourseReviewBlockModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseReviewBlockModelImpl(
      id: (json['id'] as num?)?.toInt(),
      student: json['student'] == null
          ? null
          : StudentCardModel.fromJson(json['student'] as Map<String, dynamic>),
      comment: json['comment'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      isReviewed: json['is_reviewed'] as bool?,
    );

Map<String, dynamic> _$$CourseReviewBlockModelImplToJson(
        _$CourseReviewBlockModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student': instance.student,
      'comment': instance.comment,
      'rating': instance.rating,
      'created_at': instance.createdAt?.toIso8601String(),
      'is_reviewed': instance.isReviewed,
    };
