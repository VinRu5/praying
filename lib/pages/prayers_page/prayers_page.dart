import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/prayer_cubit/prayer_cubit.dart';
import 'package:praying/services/data_service.dart';

@RoutePage()
class PrayersPage extends StatelessWidget with AutoRouteWrapper {
  const PrayersPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<PrayerCubit>(
            create: (context) => PrayerCubit(
              context.read<DataService>(),
            ),
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Preghiere"),
    );
  }
}
