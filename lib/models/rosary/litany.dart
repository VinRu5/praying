import 'package:equatable/equatable.dart';
import 'package:praying/misc/constants.dart';

class Litany extends Equatable {
  final LitanyContent mercySection;
  final LitanyContent marySection;
  final LitanyContent lambSection;

  const Litany({
    required this.mercySection,
    required this.marySection,
    required this.lambSection,
  });

  factory Litany.fromJson(Map<String, dynamic> json) => Litany(
        mercySection: LitanyContent.fromJson(json[K.marcyKey]),
        marySection: LitanyContent.fromJson(json[K.maryKey]),
        lambSection: LitanyContent.fromJson(json[K.lambKey]),
      );

  @override
  List<Object?> get props => [
        mercySection,
        marySection,
        lambSection,
      ];
}

class LitanyContent extends Equatable {
  final String response;
  final List<String> litanyText;

  const LitanyContent({
    required this.response,
    required this.litanyText,
  });

  factory LitanyContent.fromJson(Map<String, dynamic> json) => LitanyContent(
        response: json[K.responseKey],
        litanyText: (json[K.litanyKey] as List).map<String>((json) => json).toList(growable: false),
      );

  @override
  List<Object?> get props => [
        response,
        litanyText,
      ];
}
