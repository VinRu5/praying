part of 'rosary_cubit.dart';

abstract class RosaryState extends Equatable {
  const RosaryState();

  @override
  List<Object> get props => [];
}

class RosaryLoading extends RosaryState {
  const RosaryLoading();
}

class RosaryLoaded extends RosaryState {
  final Rosary rosary;
  final Misericordina misericordina;

  const RosaryLoaded(
    this.rosary,
    this.misericordina,
  );
}

class RosaryError extends RosaryState {
  const RosaryError();
}
