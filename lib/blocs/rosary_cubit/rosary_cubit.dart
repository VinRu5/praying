import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praying/models/misericordina.dart';
import 'package:praying/models/rosary/rosary.dart';
import 'package:praying/services/data_service.dart';

part 'rosary_state.dart';

class RosaryCubit extends Cubit<RosaryState> {
  final DataService dataService;

  RosaryCubit(this.dataService) : super(const RosaryLoading());

  void getRosary() async {
    try {
      final data = await dataService.readJson();

      emit(
        RosaryLoaded(
          data.rosary,
          data.misericordina,
        ),
      );
    } catch (e) {
      emit(const RosaryError());
    }
  }
}
