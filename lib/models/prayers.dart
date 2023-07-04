import 'package:equatable/equatable.dart';
import 'package:praying/misc/constants.dart';
import 'package:praying/models/prayer.dart';

class Prayers extends Equatable {
  final String title;
  final List<Prayer> prayers;

  const Prayers({
    required this.title,
    required this.prayers,
  });

  factory Prayers.fromJson(Map<String, dynamic> json) => Prayers(
        title: json[K.titleKey],
        prayers: (json[K.prayersKey] as List)
            .map(
              (prayer) => Prayer.fromJson(prayer),
            )
            .toList(growable: false),
      );

  @override
  List<Object?> get props => [
        title,
        prayers,
      ];
}
