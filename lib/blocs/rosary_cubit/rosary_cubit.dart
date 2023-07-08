import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praying/models/rosary/final_rosary.dart';
import 'package:praying/models/rosary/intro_rosary.dart';
import 'package:praying/models/rosary/litany.dart';
import 'package:praying/models/rosary/mysteries.dart';
import 'package:praying/services/data_service.dart';

part 'rosary_state.dart';

class RosaryCubit extends Cubit<RosaryState> {
  final DataService dataService;

  RosaryCubit(this.dataService) : super(const RosaryLoading());

  void getRosaryIntro() async {
    try {
      final data = await dataService.readJson();

      emit(
        RosaryIntroLoaded(
          data.rosary.intro,
        ),
      );
    } catch (e) {
      emit(const RosaryError());
    }
  }

  void getRosaryFinal() async {
    try {
      final data = await dataService.readJson();

      emit(
        RosaryFinalLoaded(
          data.rosary.finalRosary,
        ),
      );
    } catch (e) {
      emit(const RosaryError());
    }
  }

  void getLitany() async {
    try {
      final data = await dataService.readJson();

      emit(
        LitanyLoaded(
          data.rosary.litany,
        ),
      );
    } catch (e) {
      emit(const RosaryError());
    }
  }

  void getMisteries(MisteriesType misteryType) async {
    try {
      final data = await dataService.readJson();

      switch (misteryType) {
        case MisteriesType.joyfulMysteries:
          emit(
            MisteriesLoaded(data.rosary.joyfulMysteries),
          );
          break;
        case MisteriesType.lightMysteries:
          emit(
            MisteriesLoaded(data.rosary.lightMysteries),
          );
          break;
        case MisteriesType.sorrowfulMysteries:
          emit(
            MisteriesLoaded(data.rosary.sorrowfulMysteries),
          );
          break;
        case MisteriesType.gloriusMysteries:
          emit(
            MisteriesLoaded(data.rosary.gloriusMysteries),
          );
          break;
      }
    } catch (e) {
      emit(const RosaryError());
    }
  }
}
