import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/home_cubit/home_cubit.dart';
import 'package:praying/theme/models/praying_theme.dart';
import 'package:praying/widgets/card_image.dart';
import 'package:praying/widgets/error_page.dart';
import 'package:praying/widgets/pray_loader.dart';
import 'package:praying/widgets/responsive_builder.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<HomeCubit>().loadData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return const PrayLoader(
                size: 32,
              );
            }

            if (state is HomeError) {
              return const ErrorPage(message: "Non siamo riusciti a caricare i dati.\nRiprova.");
            }

            final appData = (state as HomeLoaded).data;

            return Center(
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 1200,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 62.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      CardImage(
                        maxHeight: ResponsiveBuilder.isMobile(context) ? 300.0 : 500.0,
                        child: SizedBox(
                          child: Image.asset(
                            "assets/images/${appData.coverImage}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      Text(
                        appData.title,
                        style: PrayingTheme.of(context)?.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24.0),
                      Text(
                        appData.description,
                        style: PrayingTheme.of(context)?.bodyText,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
}
