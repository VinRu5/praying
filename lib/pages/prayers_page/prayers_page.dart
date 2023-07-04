import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/prayer_cubit/prayer_cubit.dart';
import 'package:praying/services/data_service.dart';
import 'package:praying/widgets/error_page.dart';
import 'package:praying/widgets/pray_loader.dart';

@RoutePage()
class PrayersPage extends StatelessWidget with AutoRouteWrapper {
  const PrayersPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<PrayerCubit>(
            create: (context) => PrayerCubit(
              context.read<DataService>(),
            )..getPrayers(),
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerCubit, PrayerState>(
      builder: (context, state) {
        if (state is PrayerLoading) {
          return const PrayLoader(
            size: 32,
          );
        }

        if (state is PrayerError) {
          return const ErrorPage(message: "Non siamo riusciti a caricare i dati.\nRiprova.");
        }

        final prayers = (state as PrayerLoaded).prayers;

        return Center(
          child: Text(prayers.title),
        );
      },
    );
  }
}
