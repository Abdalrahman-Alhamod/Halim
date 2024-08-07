// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MentorDetailsModelImpl _$$MentorDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MentorDetailsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      enrollmentsNumber: (json['enrollments_number'] as num?)?.toInt(),
      headline: json['headline'] as String?,
      experience: json['experience'] as String?,
      about: json['about'] as String?,
      coursesCount: (json['courses_count'] as num?)?.toInt(),
      reviewsCount: (json['reviews_count'] as num?)?.toInt(),
      reviewsAvg: json['reviews_avg'] as num?,
    );

Map<String, dynamic> _$$MentorDetailsModelImplToJson(
        _$MentorDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'image': instance.image,
      'enrollments_number': instance.enrollmentsNumber,
      'headline': instance.headline,
      'experience': instance.experience,
      'about': instance.about,
      'courses_count': instance.coursesCount,
      'reviews_count': instance.reviewsCount,
      'reviews_avg': instance.reviewsAvg,
    };
