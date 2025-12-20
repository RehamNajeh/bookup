import 'package:equatable/equatable.dart';

class ListPrice extends Equatable {
  final double? amount;
  final String? currencyCode;

  const ListPrice({
    this.amount,
    this.currencyCode,
  });

  factory ListPrice.fromJson(Map<String, dynamic> json) {
    return ListPrice(
      amount: json['amount'] != null ? (json['amount'] as num).toDouble() : null,
      currencyCode: json['currencyCode'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currencyCode': currencyCode,
    };
  }

  @override
  List<Object?> get props => [amount, currencyCode];
}
