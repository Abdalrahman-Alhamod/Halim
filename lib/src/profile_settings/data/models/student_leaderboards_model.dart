class StudentLeaderboards {
  int? id;
  String? firstName;
  String? lastName;
  String? image;
  double? avgTime;

  StudentLeaderboards({
    this.id,
    this.firstName,
    this.lastName,
    this.image,
    this.avgTime,
  });

  StudentLeaderboards copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? image,
    double? avgTime,
  }) {
    return StudentLeaderboards(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      image: image ?? this.image,
      avgTime: avgTime ?? this.avgTime,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'image': image,
      'avg_time': avgTime,
    };
  }

  factory StudentLeaderboards.fromJson(Map<String, dynamic> json) {
    return StudentLeaderboards(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      image: json['image'] as String?,
      avgTime: json['avg_time'] as double?,
    );
  }

  @override
  String toString() =>
      "StudentLeaderboards(id: $id,firstName: $firstName,lastName: $lastName,image: $image,avgTime: $avgTime)";

  @override
  int get hashCode => Object.hash(id, firstName, lastName, image, avgTime);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentLeaderboards &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          image == other.image &&
          avgTime == other.avgTime;
}
