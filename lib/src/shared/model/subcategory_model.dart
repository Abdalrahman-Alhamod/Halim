class SubcategoryModel {
  int? id;
  String? name;
  SubcategoryModel({this.id, this.name});

  @override
  String toString() => 'Subcategory(id: $id, name: $name)';

  factory SubcategoryModel.fromJson(Map<String, dynamic> json) =>
      SubcategoryModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  SubcategoryModel copyWith({
    int? id,
    String? name,
  }) {
    return SubcategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
