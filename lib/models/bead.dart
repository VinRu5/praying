import 'package:equatable/equatable.dart';

class Bead extends Equatable {
  final String title;
  final String text;

  const Bead({
    required this.title,
    required this.text,
  });

  @override
  List<Object?> get props => [
        title,
        text,
      ];
}
