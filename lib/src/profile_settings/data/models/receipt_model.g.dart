// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptModelImpl _$$ReceiptModelImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptModelImpl(
      user: json['user'] == null
          ? null
          : ReceiptUserModel.fromJson(json['user'] as Map<String, dynamic>),
      course: json['course'] == null
          ? null
          : ReceiptCourseModel.fromJson(json['course'] as Map<String, dynamic>),
      priceBeforeDiscount: json['price_before_discount'] as num?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ReceiptModelImplToJson(_$ReceiptModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'course': instance.course,
      'price_before_discount': instance.priceBeforeDiscount,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$ReceiptUserModelImpl _$$ReceiptUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReceiptUserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$ReceiptUserModelImplToJson(
        _$ReceiptUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
    };

_$ReceiptCourseModelImpl _$$ReceiptCourseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReceiptCourseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      price: json['price'] as num?,
      subcategory: json['subcategory'] == null
          ? null
          : SubcategoryModel.fromJson(
              json['subcategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReceiptCourseModelImplToJson(
        _$ReceiptCourseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'subcategory': instance.subcategory,
    };
