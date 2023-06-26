import 'package:equatable/equatable.dart';

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
