import 'package:equatable/equatable.dart';
import 'package:praying/misc/constants.dart';

class Bead extends Equatable {
  final String title;
  final String text;

  const Bead({
    required this.title,
    required this.text,
  });

  factory Bead.fromJson(Map<String, dynamic> json) => Bead(
        title: json[K.titleKey],
        text: json[K.textKey],
      );

  @override
  List<Object?> get props => [
        title,
        text,
      ];
}
