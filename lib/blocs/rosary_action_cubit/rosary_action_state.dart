part of 'rosary_action_cubit.dart';

abstract class PrayerActionState extends Equatable {
  const PrayerActionState();

  @override
  List<Object> get props => [];
}

class RosaryActionUnselected extends PrayerActionState {
  const RosaryActionUnselected();
}

class RosaryActionSelected extends PrayerActionState {
  final Prayer prayer;

  const RosaryActionSelected({required this.prayer});
}
