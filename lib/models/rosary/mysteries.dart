import 'package:equatable/equatable.dart';
import 'package:praying/misc/constants.dart';
import 'package:praying/models/rosary/mystery.dart';

class Misteries extends Equatable {
  final String title;
  final String days;
  final List<Mystery> misteries;

  const Misteries({
    required this.title,
    required this.days,
    required this.misteries,
  });

  factory Misteries.fromJson(Map<String, dynamic> json) => Misteries(
        title: json[K.titleKey],
        days: json[K.daysKey],
        misteries: (json[K.misteriesKey] as List)
            .map(
              (json) => Mystery.fromJson(json),
            )
            .toList(growable: false),
      );

  @override
  List<Object?> get props => [
        title,
        days,
        misteries,
      ];
}

enum MisteriesType {
  joyfulMysteries,
  lightMysteries,
  sorrowfulMysteries,
  gloriusMysteries,
}
