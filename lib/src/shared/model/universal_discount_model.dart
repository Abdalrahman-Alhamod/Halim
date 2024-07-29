class UniversalDiscountModel {
  final int? id;
  final String? title;
  final num? value;
  final String? code;
  final String? startsAt;
  final String? endsAt;
  final int? amount;
  final int? amountAvailable;
  final String? discountType;

  UniversalDiscountModel({
    this.id,
    this.title,
    this.value,
    this.code,
    this.startsAt,
    this.endsAt,
    this.amount,
    this.amountAvailable,
    this.discountType,
  });

  @override
  String toString() {
    return 'UniversalDiscount(id: $id, title: $title, value: $value, code: $code, startsAt: $startsAt, endsAt: $endsAt, amount: $amount, amountAvailable: $amountAvailable, discountType: $discountType)';
  }

  factory UniversalDiscountModel.fromJson(Map<String, dynamic> json) {
    return UniversalDiscountModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      value: json['value'] as num?,
      code: json['code'] as String?,
      startsAt: json['starts_at'] as String?,
      endsAt: json['ends_at'] as String?,
      amount: json['amount'] as int?,
      amountAvailable: json['amount_available'] as int?,
      discountType: json['discount_type'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'value': value,
        'code': code,
        'starts_at': startsAt,
        'ends_at': endsAt,
        'amount': amount,
        'amount_available': amountAvailable,
        'discount_type': discountType,
      };

  UniversalDiscountModel copyWith({
    int? id,
    String? title,
    num? value,
    String? code,
    String? startsAt,
    String? endsAt,
    int? amount,
    int? amountAvailable,
    String? discountType,
  }) {
    return UniversalDiscountModel(
      id: id ?? this.id,
      title: title ?? this.title,
      value: value ?? this.value,
      code: code ?? this.code,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      amount: amount ?? this.amount,
      amountAvailable: amountAvailable ?? this.amountAvailable,
      discountType: discountType ?? this.discountType,
    );
  }
}
