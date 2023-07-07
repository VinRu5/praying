import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/blocs/prayer_cubit/prayer_cubit.dart';
import 'package:praying/models/prayer.dart';
import 'package:praying/routers/app_router.dart';
import 'package:praying/services/data_service.dart';
import 'package:praying/theme/models/app_colors.dart';
import 'package:praying/theme/models/praying_theme.dart';
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

        if (state is PrayerLoaded) {
          return _ContentPage(
            title: state.prayers.title,
            prayers: state.prayers.prayers,
          );
        }

        return const SizedBox();
      },
    );
  }
}

class _ContentPage extends StatelessWidget {
  final String title;
  final List<Prayer> prayers;
  final List<String> emoticon = [
    "🌙",
    "🌹",
    "⭐️",
    "☀️",
    "🔥",
    "✨",
    "🤲🏻",
    "👐🏼",
    "🙏🏼",
    "👼🏻",
  ];

  _ContentPage({
    required this.title,
    required this.prayers,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Text(
            title,
            style: PrayingTheme.of(context)?.appBarTitle,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            itemCount: prayers.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 8,
            ),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => context.router.push(
                PrayerRoute(prayer: prayers[index]),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 24.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primaryColor),
                  borderRadius: BorderRadius.circular(16.0),
                  color: Theme.of(context).primaryColor.withAlpha(25),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        emoticon[index % emoticon.length],
                        style: const TextStyle(fontSize: 24.0),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        prayers[index].title,
                        style: PrayingTheme.of(context)?.tileTitle,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FaIcon(
                        FontAwesomeIcons.circleChevronRight,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
