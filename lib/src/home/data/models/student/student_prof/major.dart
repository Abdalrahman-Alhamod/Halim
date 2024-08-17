class Major {
  int? id;
  String? name;

  Major({this.id, this.name});

  @override
  String toString() => 'Major(id: $id, name: $name)';

  factory Major.fromJson(Map<String, dynamic> json) => Major(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  Major copyWith({
    int? id,
    String? name,
  }) {
    return Major(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
