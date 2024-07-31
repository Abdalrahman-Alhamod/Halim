import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory_model.freezed.dart';
part 'subcategory_model.g.dart';

@freezed
class SubcategoryModel with _$SubcategoryModel {
  const factory SubcategoryModel({
    int? id,
    String? name,
  }) = _SubcategoryModel;

  factory SubcategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryModelFromJson(json);
}
