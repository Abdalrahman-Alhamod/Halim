// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseCardModelImpl _$$CourseCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseCardModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      price: json['price'] as num?,
      subcategory: json['subcategory'] == null
          ? null
          : SubcategoryModel.fromJson(
              json['subcategory'] as Map<String, dynamic>),
      reviewsAvg: json['reviews_avg'] as num?,
      enrollmentsCount: (json['enrollments_count'] as num?)?.toInt(),
      isSaved: json['is_saved'] as bool?,
      discount: json['discount'] == null
          ? null
          : DiscountModel.fromJson(json['discount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseCardModelImplToJson(
        _$CourseCardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'subcategory': instance.subcategory,
      'reviews_avg': instance.reviewsAvg,
      'enrollments_count': instance.enrollmentsCount,
      'is_saved': instance.isSaved,
      'discount': instance.discount,
    };
