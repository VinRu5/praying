import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/home_cubit/home_cubit.dart';
import 'package:praying/widgets/card_image.dart';
import 'package:praying/widgets/error_page.dart';
import 'package:praying/widgets/pray_loader.dart';

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

            return Padding(
              padding: const EdgeInsets.only(
                top: 62.0,
                left: 16.0,
                right: 16.0,
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  CardImage(
                    child: SizedBox(
                      height: 300,
                      child: Image.asset(
                        "assets/images/${appData.coverImage}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    appData.title,
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    appData.description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      );
}
