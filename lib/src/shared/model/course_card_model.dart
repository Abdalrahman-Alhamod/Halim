import 'subcategory_model.dart';
import 'universal_discount_model.dart';

class CourseCardModel {
  final int? id;
  final String? title;
  final String? image;
  final num? price;
  final SubcategoryModel? subcategory;
  final int? enrollmentsCount;
  final num? reviewsAvg;
  final bool? isSaved;
  final List<UniversalDiscountModel>? universalDiscount;

  CourseCardModel({
    this.id,
    this.title,
    this.image,
    this.price,
    this.subcategory,
    this.enrollmentsCount,
    this.reviewsAvg,
    this.isSaved,
    this.universalDiscount,
  });

  @override
  String toString() {
    return 'CourseCardModel(id: $id, title: $title, image: $image, price: $price, subcategory: $subcategory, enrollmentsCount: $enrollmentsCount, reviewsAvg: $reviewsAvg, isSaved: $isSaved, universalDiscount: $universalDiscount)';
  }

  factory CourseCardModel.fromJson(Map<String, dynamic> json) {
    return CourseCardModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      price: json['price'] as num?,
      subcategory: json['subcategory'] == null
          ? null
          : SubcategoryModel.fromJson(
              json['subcategory'] as Map<String, dynamic>),
      enrollmentsCount: json['enrollments_count'] as int?,
      reviewsAvg: json['reviews_avg'] as num?,
      isSaved: json['is_saved'] as bool?,
      universalDiscount: (json['universal_discount'] as List<dynamic>?)
          ?.map(
              (e) => UniversalDiscountModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'image': image,
        'price': price,
        'subcategory': subcategory?.toJson(),
        'enrollments_count': enrollmentsCount,
        'reviews_avg': reviewsAvg,
        'is_saved': isSaved,
        'universal_discount':
            universalDiscount?.map((e) => e.toJson()).toList(),
      };

  CourseCardModel copyWith({
    int? id,
    String? title,
    String? image,
    num? price,
    SubcategoryModel? subcategory,
    int? enrollmentsCount,
    num? reviewsAvg,
    bool? isSaved,
    List<UniversalDiscountModel>? universalDiscount,
  }) {
    return CourseCardModel(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      price: price ?? this.price,
      subcategory: subcategory ?? this.subcategory,
      enrollmentsCount: enrollmentsCount ?? this.enrollmentsCount,
      reviewsAvg: reviewsAvg ?? this.reviewsAvg,
      isSaved: isSaved ?? this.isSaved,
      universalDiscount: universalDiscount ?? this.universalDiscount,
    );
  }
}
