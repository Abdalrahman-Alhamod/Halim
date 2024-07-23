import 'package:json_annotation/json_annotation.dart';
part 'links_list.g.dart';

///LinksList
@JsonSerializable(explicitToJson: true)
class LinksList {
  @JsonKey(name: "first")
  String? first;
  @JsonKey(name: "next")
  String? next;
  @JsonKey(name: "prev")
  String? prev;
  @JsonKey(name: "last")
  String? last;

  factory LinksList.fromJson(Map<String, dynamic> json) {
    return _$LinksListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LinksListToJson(this);

  LinksList({
    this.first,
    this.next,
    this.prev,
    this.last,
  });
}
