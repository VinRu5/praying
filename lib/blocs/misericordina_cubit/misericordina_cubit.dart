import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praying/models/misericordina.dart';
import 'package:praying/services/data_service.dart';

part 'misericordina_state.dart';

class MisericordinaCubit extends Cubit<MisericordinaState> {
  final DataService dataService;
  MisericordinaCubit(this.dataService) : super(const MisericordinaLoading());

  void getMisericordina() async {
    try {
      final data = await dataService.readJson();

      emit(
        MisericordinaLoaded(
          data.misericordina,
        ),
      );
    } catch (e) {
      emit(const MisericordinaError());
    }
  }
}
