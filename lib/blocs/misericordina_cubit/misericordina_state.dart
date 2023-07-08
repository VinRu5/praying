part of 'misericordina_cubit.dart';

abstract class MisericordinaState extends Equatable {
  const MisericordinaState();

  @override
  List<Object> get props => [];
}

class MisericordinaLoading extends MisericordinaState {
  const MisericordinaLoading();
}

class MisericordinaLoaded extends MisericordinaState {
  final Misericordina misericordina;

  const MisericordinaLoaded(
    this.misericordina,
  );
}

class MisericordinaError extends MisericordinaState {
  const MisericordinaError();
}
