import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praying/models/misericordina.dart';
import 'package:praying/models/prayers.dart';
import 'package:praying/services/data_service.dart';

part 'prayer_state.dart';

class PrayerCubit extends Cubit<PrayerState> {
  final DataService dataService;

  PrayerCubit(this.dataService) : super(const PrayerLoading());

  void getPrayers() async {
    try {
      final data = await dataService.readJson();

      emit(
        PrayerLoaded(
          data.prayers,
          data.misericordina,
        ),
      );
    } catch (e) {
      emit(const PrayerError());
    }
  }
}
