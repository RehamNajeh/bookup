import 'package:bookup/features/home/data/models/access_info.dart';
import 'package:bookup/features/home/data/models/sale_info.dart';
import 'package:bookup/features/home/data/models/search_info.dart';
import 'package:bookup/features/home/data/models/volume_info.dart';

class BookModel {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'] as String?,
      id: json['id'] as String?,
      etag: json['etag'] as String?,
      selfLink: json['selfLink'] as String?,
      volumeInfo: json['volumeInfo'] != null
          ? VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>)
          : null,
      saleInfo: json['saleInfo'] != null
          ? SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>)
          : null,
      accessInfo: json['accessInfo'] != null
          ? AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>)
          : null,
      searchInfo: json['searchInfo'] != null
          ? SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'id': id,
      'etag': etag,
      'selfLink': selfLink,
      'volumeInfo': volumeInfo?.toJson(),
      'saleInfo': saleInfo?.toJson(),
      'accessInfo': accessInfo?.toJson(),
      'searchInfo': searchInfo?.toJson(),
    };
  }
}

