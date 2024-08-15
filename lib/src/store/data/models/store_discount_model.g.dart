// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreDiscountModelImpl _$$StoreDiscountModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreDiscountModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      pointsCost: (json['points_cost'] as num?)?.toInt(),
      discount: json['discount'] == null
          ? null
          : DiscountModel.fromJson(json['discount'] as Map<String, dynamic>),
      course: json['course'] == null
          ? null
          : StoreDiscountCourseCard.fromJson(
              json['course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StoreDiscountModelImplToJson(
        _$StoreDiscountModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'points_cost': instance.pointsCost,
      'discount': instance.discount,
      'course': instance.course,
    };

_$StoreDiscountCourseCardImpl _$$StoreDiscountCourseCardImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreDiscountCourseCardImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      mentor: json['mentor'] == null
          ? null
          : StoreDiscountCourseMentor.fromJson(
              json['mentor'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toInt(),
      subcategory: json['subcategory'] == null
          ? null
          : SubcategoryModel.fromJson(
              json['subcategory'] as Map<String, dynamic>),
      reviewsAvg: (json['reviews_avg'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StoreDiscountCourseCardImplToJson(
        _$StoreDiscountCourseCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'mentor': instance.mentor,
      'price': instance.price,
      'subcategory': instance.subcategory,
      'reviews_avg': instance.reviewsAvg,
    };

_$StoreDiscountCourseMentorImpl _$$StoreDiscountCourseMentorImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreDiscountCourseMentorImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
    );

Map<String, dynamic> _$$StoreDiscountCourseMentorImplToJson(
        _$StoreDiscountCourseMentorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
