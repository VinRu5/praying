import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/home_cubit/home_cubit.dart';
import 'package:praying/services/data_service.dart';

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
              return const Center(
                child: Text('Caricamento'),
              );
            }

            final appData = (state as HomeLoaded).data;

            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 62.0,
                horizontal: 8.0,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: SizedBox(
                      height: 400,
                      child: Image.asset(
                        "assets/images/${appData.coverImage}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Text(
                    appData.title,
                    style: TextStyle(
                      fontFamily: 'Ranchers',
                      fontSize: 48.0,
                      letterSpacing: 2.5,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  CupertinoButton(
                    child: Text("Click"),
                    onPressed: null,
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    child: Text("Click"),
                    onPressed: null,
                  ),
                ],
              ),
            );
          },
        ),
      );
}
