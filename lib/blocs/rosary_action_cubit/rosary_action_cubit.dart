import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praying/models/rosary/mysteries.dart';

part 'rosary_action_state.dart';

class RosaryActionCubit extends Cubit<RosaryActionState> {
  RosaryActionCubit() : super(const RosaryActionUnselected());

  void selectedRosary(MisteriesType? type) {
    emit(const RosaryActionUnselected());
    emit(
      RosaryActionSelected(type: type),
    );
  }

  void unselected() {
    emit(const RosaryActionUnselected());
  }
}
