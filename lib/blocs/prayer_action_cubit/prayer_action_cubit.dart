import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praying/models/prayer.dart';

part 'prayer_action_state.dart';

class PrayerActionCubit extends Cubit<PrayerActionState> {
  PrayerActionCubit() : super(const PrayerActionUnselected());

  void selectedPrayer(Prayer prayer) {
    emit(const PrayerActionUnselected());
    emit(
      PrayerActionSelected(prayer: prayer),
    );
  }
}
