import 'package:equatable/equatable.dart';
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

  @override
  List<Object?> get props => [
        title,
        days,
        misteries,
      ];
}
