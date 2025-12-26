import 'package:equatable/equatable.dart';

import 'list_price.dart';
import 'retail_price.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final String? buyLink;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.buyLink,
    this.listPrice,
    this.retailPrice,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'] as String?,
      saleability: json['saleability'] as String?,
      isEbook: json['isEbook'] as bool?,
      buyLink: json['buyLink'] as String?,
      listPrice: json['listPrice'] != null
          ? ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>)
          : null,
      retailPrice: json['retailPrice'] != null
          ? RetailPrice.fromJson(json['retailPrice'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'saleability': saleability,
      'isEbook': isEbook,
      'buyLink': buyLink,
      'listPrice': listPrice?.toJson(),
      'retailPrice': retailPrice?.toJson(),
    };
  }

  @override
  List<Object?> get props => [
    country,
    saleability,
    isEbook,
    buyLink,
    listPrice,
    retailPrice,
  ];
}
