import 'package:equatable/equatable.dart';

class Prayer extends Equatable {
  final String title;
  final String image;
  final String text;

  const Prayer({
    required this.title,
    required this.image,
    required this.text,
  });

  @override
  List<Object?> get props => [
        title,
        image,
        text,
      ];
}
