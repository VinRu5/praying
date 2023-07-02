import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/home_cubit/home_cubit.dart';

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
              child: ListView(
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
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 24.0),
                  Card(
                    child: Text("Text molto molto lungo da poter cambiare colore immediatamente"),
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: null,
                    child: Text("Click"),
                  ),
                  const SizedBox(height: 24.0),
                  TextButton(
                    onPressed: null,
                    child: Text("Click"),
                  ),
                  const SizedBox(height: 24.0),
                  FilledButton(
                    onPressed: null,
                    child: Text("Click"),
                  ),
                  const SizedBox(height: 24.0),
                  OutlinedButton(
                    onPressed: null,
                    child: Text("Click"),
                  ),
                ],
              ),
            );
          },
        ),
      );
}
