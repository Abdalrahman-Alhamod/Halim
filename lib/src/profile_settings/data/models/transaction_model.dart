class TransactionModel {
  int? id;
  int? walletId;
  int? transactionValue;
  String? createdAt;

  TransactionModel({
    this.id,
    this.walletId,
    this.transactionValue,
    this.createdAt,
  });

  // @override
  // String toString() {
  //   return 'TransactionModel(id: $id, walletId: $walletId, transactionValue: $transactionValue, createdAt: $createdAt)';
  // }

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'] as int?,
      walletId: json['wallet_id'] as int?,
      transactionValue: json['transaction_value'] as int?,
      createdAt: json['created_at'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'wallet_id': walletId,
        'transaction_value': transactionValue,
        'created_at': createdAt,
      };

  TransactionModel copyWith({
    int? id,
    int? walletId,
    int? transactionValue,
    String? createdAt,
  }) {
    return TransactionModel(
      id: id ?? this.id,
      walletId: walletId ?? this.walletId,
      transactionValue: transactionValue ?? this.transactionValue,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
