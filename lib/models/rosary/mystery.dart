import 'package:equatable/equatable.dart';

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

  @override
  List<Object?> get props => [
        id,
        title,
        image,
        text,
        reference,
      ];
}
