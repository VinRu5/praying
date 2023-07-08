import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/blocs/rosary_cubit/rosary_cubit.dart';
import 'package:praying/models/rosary/mysteries.dart';
import 'package:praying/pages/rosary_page/widgets/litany_page.dart';
import 'package:praying/pages/rosary_page/widgets/misteries_page.dart';
import 'package:praying/pages/rosary_page/widgets/rosary_final_page.dart';
import 'package:praying/pages/rosary_page/widgets/rosary_intro_page.dart';
import 'package:praying/services/data_service.dart';
import 'package:praying/theme/models/app_colors.dart';
import 'package:praying/theme/models/praying_theme.dart';
import 'package:praying/widgets/error_page.dart';
import 'package:praying/widgets/pray_loader.dart';

@RoutePage()
class RosaryPage extends StatelessWidget with AutoRouteWrapper {
  final MisteriesType type;

  const RosaryPage({
    required this.type,
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<RosaryCubit>(
            create: (context) => RosaryCubit(
              context.read<DataService>(),
            )..getRosaryIntro(),
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
        title: Text(
          "Rosario",
          style: PrayingTheme.of(context)?.appBarTitle,
        ),
      ),
      body: BlocBuilder<RosaryCubit, RosaryState>(
        builder: (context, state) {
          if (state is RosaryLoading) {
            return const PrayLoader();
          }

          if (state is RosaryError) {
            return const ErrorPage(message: "Non siamo riusciti a caricare i tuoi dati.\nRiprova.");
          }

          if (state is RosaryIntroLoaded) {
            return RosaryIntroPage(introRosary: state.rosaryIntro);
          }

          if (state is RosaryFinalLoaded) {
            return RosaryFinalPage(finalRosary: state.rosaryFinal);
          }

          if (state is LitanyLoaded) {
            return LitanyPage(litany: state.litany);
          }

          if (state is MisteriesLoaded) {
            return MisteriesPage(misteries: state.misteries);
          }

          return const SizedBox();
        },
      ),
    );
  }
}
