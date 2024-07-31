// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_main_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseMainSectionModelImpl _$$CourseMainSectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseMainSectionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      price: json['price'] as num?,
      intro: json['intro'] as String?,
      numberOfHours: json['number_of_hours'] as num?,
      subcategory: json['subcategory'] == null
          ? null
          : SubcategoryModel.fromJson(
              json['subcategory'] as Map<String, dynamic>),
      level: json['level'] == null
          ? null
          : LevelModel.fromJson(json['level'] as Map<String, dynamic>),
      enrollmentsCount: (json['enrollments_count'] as num?)?.toInt(),
      reviewsCount: (json['reviews_count'] as num?)?.toInt(),
      reviewsAvg: json['reviews_avg'] as num?,
      isSaved: json['is_saved'] as bool?,
      isEnrolled: json['is_enrolled'] as bool?,
      discount: json['discount'] == null
          ? null
          : DiscountModel.fromJson(json['discount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseMainSectionModelImplToJson(
        _$CourseMainSectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'intro': instance.intro,
      'number_of_hours': instance.numberOfHours,
      'subcategory': instance.subcategory,
      'level': instance.level,
      'enrollments_count': instance.enrollmentsCount,
      'reviews_count': instance.reviewsCount,
      'reviews_avg': instance.reviewsAvg,
      'is_saved': instance.isSaved,
      'is_enrolled': instance.isEnrolled,
      'discount': instance.discount,
    };
