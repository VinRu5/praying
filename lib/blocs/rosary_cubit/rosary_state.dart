part of 'rosary_cubit.dart';

abstract class RosaryState extends Equatable {
  const RosaryState();

  @override
  List<Object> get props => [];
}

class RosaryLoading extends RosaryState {
  const RosaryLoading();
}

class RosaryIntroLoaded extends RosaryState {
  final IntroRosary rosaryIntro;

  const RosaryIntroLoaded(
    this.rosaryIntro,
  );
}

class MisteriesLoaded extends RosaryState {
  final Misteries misteries;

  const MisteriesLoaded(
    this.misteries,
  );
}

class LitanyLoaded extends RosaryState {
  final Litany litany;

  const LitanyLoaded(
    this.litany,
  );
}

class RosaryFinalLoaded extends RosaryState {
  final FinalRosary rosaryFinal;

  const RosaryFinalLoaded(
    this.rosaryFinal,
  );
}

class RosaryError extends RosaryState {
  const RosaryError();
}
