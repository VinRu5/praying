import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praying/models/prayer.dart';

part 'rosary_action_state.dart';

class PrayerActionCubit extends Cubit<PrayerActionState> {
  PrayerActionCubit() : super(const RosaryActionUnselected());

  void selectedRosary(Prayer prayer) {
    emit(const RosaryActionUnselected());
    emit(
      RosaryActionSelected(prayer: prayer),
    );
  }
}
