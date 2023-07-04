part of 'prayer_cubit.dart';

abstract class PrayerState extends Equatable {
  const PrayerState();

  @override
  List<Object> get props => [];
}

class PrayerLoading extends PrayerState {
  const PrayerLoading();
}

class PrayerLoaded extends PrayerState {
  final Prayers prayers;

  const PrayerLoaded(
    this.prayers,
  );
}

class PrayerError extends PrayerState {
  const PrayerError();
}
