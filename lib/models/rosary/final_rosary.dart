import 'package:equatable/equatable.dart';

class FinalRosary extends Equatable {
  final String image;
  final String prayerMary;
  final String prayer;

  const FinalRosary({
    required this.image,
    required this.prayerMary,
    required this.prayer,
  });

  @override
  List<Object?> get props => [
        image,
        prayerMary,
        prayer,
      ];
}
