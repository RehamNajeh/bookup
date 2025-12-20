import 'package:equatable/equatable.dart';

class Pdf extends Equatable {
  final bool? isAvailable;
  final String? downloadLink;
  final String? acsTokenLink;

  const Pdf({
    this.isAvailable,
    this.downloadLink,
    this.acsTokenLink,
  });

  factory Pdf.fromJson(Map<String, dynamic> json) {
    return Pdf(
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
