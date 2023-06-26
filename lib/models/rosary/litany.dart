import 'package:equatable/equatable.dart';

class Litany extends Equatable {
  final LitanyContent mercySection;
  final LitanyContent marySection;
  final LitanyContent lambSection;

  const Litany({
    required this.mercySection,
    required this.marySection,
    required this.lambSection,
  });

  @override
  List<Object?> get props => [
        mercySection,
        marySection,
        lambSection,
      ];
}

class LitanyContent extends Equatable {
  final String response;
  final String litanyText;

  const LitanyContent({
    required this.response,
    required this.litanyText,
  });

  @override
  List<Object?> get props => [
        response,
        litanyText,
      ];
}
