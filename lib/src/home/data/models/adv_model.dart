class AdvModel {
  int? id;
  String? image;

  AdvModel({this.id, this.image});

  @override
  String toString() => 'AdvModel(id: $id, image: $image)';

  factory AdvModel.fromJson(Map<String, dynamic> json) => AdvModel(
        id: json['id'] as int?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
      };

  AdvModel copyWith({
    int? id,
    String? image,
  }) {
    return AdvModel(
      id: id ?? this.id,
      image: image ?? this.image,
    );
  }
}
