import 'package:equatable/equatable.dart';
import 'package:praying/misc/constants.dart';

class Prayer extends Equatable {
  final String title;
  final String image;
  final String text;

  const Prayer({
    required this.title,
    required this.image,
    required this.text,
  });

  factory Prayer.fromJson(Map<String, dynamic> json) => Prayer(
        title: json[K.titleKey],
        image: json[K.imgKey],
        text: json[K.textKey],
      );

  @override
  List<Object?> get props => [
        title,
        image,
        text,
      ];
}
