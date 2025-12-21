import 'package:equatable/equatable.dart';

import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publishedDate;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;
  final String? subtitle;
  final String? publisher;
  final String? description;
  final double? averageRating;
  final int? ratingsCount;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publishedDate,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
    this.subtitle,
    this.publisher,
    this.description,
    this.averageRating,
    this.ratingsCount,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'] as String?,
      authors: json['authors'] != null
          ? List<String>.from(json['authors'] as List)
          : null,
      publishedDate: json['publishedDate'] as String?,
      industryIdentifiers: json['industryIdentifiers'] != null
          ? (json['industryIdentifiers'] as List)
                .map(
                  (e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>),
                )
                .toList()
          : null,
      readingModes: json['readingModes'] != null
          ? ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>)
          : null,
      pageCount: json['pageCount'] as int?,
      printType: json['printType'] as String?,
      categories: json['categories'] != null
          ? List<String>.from(json['categories'] as List)
          : null,
      maturityRating: json['maturityRating'] as String?,
      allowAnonLogging: json['allowAnonLogging'] as bool?,
      contentVersion: json['contentVersion'] as String?,
      panelizationSummary: json['panelizationSummary'] != null
          ? PanelizationSummary.fromJson(
              json['panelizationSummary'] as Map<String, dynamic>,
            )
          : null,
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>)
          : null,
      language: json['language'] as String?,
      previewLink: json['previewLink'] as String?,
      infoLink: json['infoLink'] as String?,
      canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
      subtitle: json['subtitle'] as String?,
      publisher: json['publisher'] as String?,
      description: json['description'] as String?,
      averageRating: json['averageRating'] != null
          ? (json['averageRating'] as num).toDouble()
          : null,
      ratingsCount: json['ratingsCount'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'authors': authors,
      'publishedDate': publishedDate,
      'industryIdentifiers': industryIdentifiers
          ?.map((e) => e.toJson())
          .toList(),
      'readingModes': readingModes?.toJson(),
      'pageCount': pageCount,
      'printType': printType,
      'categories': categories,
      'maturityRating': maturityRating,
      'allowAnonLogging': allowAnonLogging,
      'contentVersion': contentVersion,
      'panelizationSummary': panelizationSummary?.toJson(),
      'imageLinks': imageLinks?.toJson(),
      'language': language,
      'previewLink': previewLink,
      'infoLink': infoLink,
      'canonicalVolumeLink': canonicalVolumeLink,
      'subtitle': subtitle,
      'publisher': publisher,
      'description': description,
      'averageRating': averageRating,
      'ratingsCount': ratingsCount,
    };
  }

  @override
  List<Object?> get props => [
    title,
    authors,
    publishedDate,
    industryIdentifiers,
    readingModes,
    pageCount,
    printType,
    categories,
    maturityRating,
    allowAnonLogging,
    contentVersion,
    panelizationSummary,
    imageLinks,
    language,
    previewLink,
    infoLink,
    canonicalVolumeLink,
    subtitle,
    publisher,
    description,
    averageRating,
    ratingsCount,
  ];
}
