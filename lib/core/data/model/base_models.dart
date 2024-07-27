class BaseModels<T> {
  List<T> list;

  factory BaseModels.fromJson(json, Function(dynamic itemJson) fromJsonT) {
    return _$BaseModelsFromJson(json, fromJsonT);
  }

  Map<String, dynamic> toJson() => _$BaseModelsToJson(this);

  BaseModels({required this.list});
  @override
  String toString() {
    return list.toString();
  }
}

_$BaseModelsFromJson(json, fromJsonT) => BaseModels(
      list: (json as List).map((e) {
        return fromJsonT(e as Map<String, dynamic>);
      }).toList(),
    );
Map<String, dynamic> _$BaseModelsToJson(BaseModels instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };
