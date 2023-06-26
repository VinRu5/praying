import 'package:equatable/equatable.dart';
import 'package:praying/models/bead.dart';

class Misericordina extends Equatable {
  final String cross;
  final String intro;
  final String prayer;
  final String finalText3;
  final String finalText;
  final String title;
  final String image;
  final Bead bigBead;
  final Bead littleBead;

  const Misericordina({
    required this.cross,
    required this.intro,
    required this.prayer,
    required this.finalText3,
    required this.finalText,
    required this.title,
    required this.image,
    required this.bigBead,
    required this.littleBead,
  });

  @override
  List<Object?> get props => [
        cross,
        intro,
        prayer,
        finalText3,
        finalText,
        title,
        image,
        bigBead,
        littleBead,
      ];
}
