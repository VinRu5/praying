import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/rosary_cubit/rosary_cubit.dart';
import 'package:praying/services/data_service.dart';

@RoutePage()
class RosaryPage extends StatelessWidget with AutoRouteWrapper {
  const RosaryPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<RosaryCubit>(
            create: (context) => RosaryCubit(
              context.read<DataService>(),
            ),
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Rosario"),
    );
  }
}
