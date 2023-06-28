import 'package:equatable/equatable.dart';
import 'package:praying/misc/constants.dart';

class FinalRosary extends Equatable {
  final String image;
  final String prayerMary;
  final String prayer;

  const FinalRosary({
    required this.image,
    required this.prayerMary,
    required this.prayer,
  });

  factory FinalRosary.fromJson(Map<String, dynamic> json) => FinalRosary(
        image: json[K.imgKey],
        prayerMary: json[K.prayerMaryKey],
        prayer: json[K.prayerKey],
      );

  @override
  List<Object?> get props => [
        image,
        prayerMary,
        prayer,
      ];
}
