part of 'prayer_action_cubit.dart';

abstract class PrayerActionState extends Equatable {
  const PrayerActionState();

  @override
  List<Object> get props => [];
}

class PrayerActionUnselected extends PrayerActionState {
  const PrayerActionUnselected();
}

class PrayerActionSelected extends PrayerActionState {
  final Prayer prayer;

  const PrayerActionSelected({required this.prayer});
}
