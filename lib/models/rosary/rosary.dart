import 'package:equatable/equatable.dart';
import 'package:praying/models/rosary/final_rosary.dart';
import 'package:praying/models/rosary/intro_rosary.dart';
import 'package:praying/models/rosary/litany.dart';
import 'package:praying/models/rosary/mysteries.dart';

class Rosary extends Equatable {
  final String title;
  final IntroRosary intro;
  final Misteries joyfulMysteries;
  final Misteries lightMysteries;
  final Misteries sorrowfulMysteries;
  final Misteries gloriusMysteries;
  final Litany litany;
  final FinalRosary finalRosary;

  const Rosary({
    required this.title,
    required this.intro,
    required this.joyfulMysteries,
    required this.lightMysteries,
    required this.sorrowfulMysteries,
    required this.gloriusMysteries,
    required this.litany,
    required this.finalRosary,
  });

  @override
  List<Object?> get props => [
        title,
        intro,
        joyfulMysteries,
        lightMysteries,
        sorrowfulMysteries,
        gloriusMysteries,
        litany,
        finalRosary,
      ];
}
