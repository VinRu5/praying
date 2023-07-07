import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/blocs/rosary_cubit/rosary_cubit.dart';
import 'package:praying/services/data_service.dart';
import 'package:praying/theme/models/app_colors.dart';

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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => context.router.pop(),
          icon: const FaIcon(
            FontAwesomeIcons.circleChevronLeft,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: const Center(
        child: Text("Rosario"),
      ),
    );
  }
}
