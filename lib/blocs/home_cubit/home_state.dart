part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {
  const HomeLoading();
}

class HomeLoaded extends HomeState {
  final AppModel data;

  const HomeLoaded(this.data);
}

class HomeError extends HomeState {
  const HomeError();
}
