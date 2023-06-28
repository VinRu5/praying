import 'package:equatable/equatable.dart';
import 'package:praying/misc/constants.dart';

class IntroRosary extends Equatable {
  final String title;
  final String image;
  final String introText;
  final String cross;
  final String godText;
  final String structure;

  const IntroRosary({
    required this.title,
    required this.image,
    required this.introText,
    required this.cross,
    required this.godText,
    required this.structure,
  });

  factory IntroRosary.fromJson(Map<String, dynamic> json) => IntroRosary(
        title: json[K.titleKey],
        image: json[K.imgKey],
        introText: json[K.introTextKey],
        cross: json[K.crossKey],
        godText: json[K.godTextKey],
        structure: json[K.structureKey],
      );

  @override
  List<Object?> get props => [
        title,
        image,
        introText,
        cross,
        godText,
        structure,
      ];
}
