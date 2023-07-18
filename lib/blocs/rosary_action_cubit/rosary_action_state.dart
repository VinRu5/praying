part of 'rosary_action_cubit.dart';

abstract class RosaryActionState extends Equatable {
  const RosaryActionState();

  @override
  List<Object> get props => [];
}

class RosaryActionUnselected extends RosaryActionState {
  const RosaryActionUnselected();
}

class RosaryActionSelected extends RosaryActionState {
  final MisteriesType? type;

  const RosaryActionSelected({required this.type});
}
