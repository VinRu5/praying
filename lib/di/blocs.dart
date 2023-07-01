part of 'dependency_injector.dart';

List<BlocProvider> _blocs = [
  BlocProvider<HomeCubit>(
    create: (context) => HomeCubit(
      context.read<DataService>(),
    ),
  ),
];
