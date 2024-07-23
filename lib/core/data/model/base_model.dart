import 'package:json_annotation/json_annotation.dart';
import 'links_list.dart';
import 'meta_list.dart';
part 'base_model.g.dart';

@JsonSerializable(genericArgumentFactories: true, explicitToJson: true)
class BaseModel<T> {
  BaseModel({
    required this.data,
    this.meta,
    this.links,
    this.message = '',
  });
  final T? data;
  final MetaList? meta;
  final LinksList? links;
  final String message;
  factory BaseModel.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic itemJson) fromJsonT,
  ) {
    return _$BaseModelFromJson(json, fromJsonT);
  }
  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
  ) {
    final Map<String, dynamic> json = _$BaseModelToJson(this, toJsonT);
    return json;
  }
}
