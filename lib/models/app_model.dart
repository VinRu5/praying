import 'package:equatable/equatable.dart';
import 'package:praying/misc/constants.dart';
import 'package:praying/models/misericordina.dart';
import 'package:praying/models/prayers.dart';
import 'package:praying/models/rosary/rosary.dart';

class AppModel extends Equatable {
  final String coverImage;
  final String title;
  final Misericordina misericordina;
  final Prayers prayers;
  final Rosary rosary;

  const AppModel({
    required this.title,
    required this.coverImage,
    required this.misericordina,
    required this.prayers,
    required this.rosary,
  });

  factory AppModel.fromJson(Map<String, dynamic> json) => AppModel(
        title: json[K.titleKey],
        coverImage: json[K.imgKey],
        misericordina: Misericordina.fromJson(json[K.misericordinaKey]),
        prayers: Prayers.fromJson(json[K.prayersKey]),
        rosary: Rosary.fromJson(json[K.rosaryKey]),
      );

  @override
  List<Object?> get props => [
        coverImage,
        title,
        misericordina,
        prayers,
        rosary,
      ];
}
