part of 'dependency_injector.dart';

List<SingleChildWidget> _providers = [
  Provider<DataService>(
    create: (_) => DataService(),
  ),
];
