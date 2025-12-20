import 'package:equatable/equatable.dart';

class Epub extends Equatable {
  final bool? isAvailable;
  final String? downloadLink;
  final String? acsTokenLink;

  const Epub({
    this.isAvailable,
    this.downloadLink,
    this.acsTokenLink,
  });

  factory Epub.fromJson(Map<String, dynamic> json) {
    return Epub(
      isAvailable: json['isAvailable'] as bool?,
      downloadLink: json['downloadLink'] as String?,
      acsTokenLink: json['acsTokenLink'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isAvailable': isAvailable,
      'downloadLink': downloadLink,
      'acsTokenLink': acsTokenLink,
    };
  }

  @override
  List<Object?> get props => [isAvailable, downloadLink, acsTokenLink];
}
