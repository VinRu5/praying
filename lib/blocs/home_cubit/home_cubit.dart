import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praying/models/app_model.dart';
import 'package:praying/services/data_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final DataService dataService;

  HomeCubit(this.dataService) : super(const HomeLoading());

  void loadData() async {
    try {
      final data = await dataService.readJson();

      emit(HomeLoaded(data));
    } catch (e) {
      emit(const HomeError());
    }
  }
}
