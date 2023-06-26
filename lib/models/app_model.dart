import 'package:equatable/equatable.dart';
import 'package:praying/models/misericordina.dart';
import 'package:praying/models/prayers.dart';

class AppModel extends Equatable {
  final String coverImage;
  final String title;
  final Misericordina misericordina;
  final Prayers prayers;

  const AppModel({
    required this.title,
    required this.coverImage,
    required this.misericordina,
    required this.prayers,
  });

  @override
  List<Object?> get props => [
        coverImage,
        title,
        misericordina,
        prayers,
      ];
}
