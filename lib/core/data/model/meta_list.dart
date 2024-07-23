import 'package:json_annotation/json_annotation.dart';
part 'meta_list.g.dart';

///MetaList
@JsonSerializable(explicitToJson: true)
class MetaList {
  @JsonKey(name: "current_page")
  int? currentPage;
  @JsonKey(name: "from")
  int? from;
  @JsonKey(name: "last_page")
  int? lastPage;
  @JsonKey(name: "path")
  String? path;
  @JsonKey(name: "per_page")
  int? perPage;
  @JsonKey(name: "to")
  int? to;
  @JsonKey(name: "total")
  int? total;

  factory MetaList.fromJson(Map<String, dynamic> json) {
    return _$MetaListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MetaListToJson(this);

  MetaList({
    this.currentPage,
    this.from,
    this.lastPage,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });
}
