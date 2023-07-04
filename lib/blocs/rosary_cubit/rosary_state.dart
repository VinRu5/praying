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

  const RosaryLoaded(
    this.rosary,
  );
}

class RosaryError extends RosaryState {
  const RosaryError();
}
