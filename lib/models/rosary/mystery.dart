import 'package:equatable/equatable.dart';
import 'package:praying/misc/constants.dart';

class Mystery extends Equatable {
  final int id;
  final String title;
  final String image;
  final String text;
  final String reference;

  const Mystery({
    required this.id,
    required this.title,
    required this.image,
    required this.text,
    required this.reference,
  });

  factory Mystery.fromJson(Map<String, dynamic> json) => Mystery(
        id: json[K.idKey],
        title: json[K.titleKey],
        image: json[K.imgKey],
        text: json[K.textKey],
        reference: json[K.referenceKey],
      );

  @override
  List<Object?> get props => [
        id,
        title,
        image,
        text,
        reference,
      ];
}
