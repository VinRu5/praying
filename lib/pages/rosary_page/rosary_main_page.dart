import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/rosary_action_cubit/rosary_action_cubit.dart';
import 'package:praying/pages/rosary_page/misericordina_page.dart';
import 'package:praying/pages/rosary_page/rosary_page.dart';
import 'package:praying/pages/rosary_page/widgets/button_list_navigation.dart';
import 'package:praying/widgets/responsive_builder.dart';

@RoutePage()
class RosaryMainPage extends StatelessWidget with AutoRouteWrapper {
  const RosaryMainPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<RosaryActionCubit>(
            create: (context) => RosaryActionCubit(),
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) => ResponsiveBuilder(builder: (context, devType) {
        if (devType == DeviceType.phone) {
          return const ButtonListNavigation();
        } else {
          return Row(
            children: [
              const Expanded(child: ButtonListNavigation()),
              Expanded(
                flex: 2,
                child: BlocBuilder<RosaryActionCubit, RosaryActionState>(
                  builder: (context, state) {
                    if (state is RosaryActionUnselected) {
                      return Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Center(
                          child: Image.asset(
                            "assets/images/logo_praying.png",
                            width: 300.0,
                            height: 300.0,
                          ),
                        ),
                      );
                    } else if (state is RosaryActionSelected) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: state.type == null
                            ? const MisericordinaPage()
                            : RosaryPage(
                                type: state.type!,
                              ),
                      );
                    }

                    return const SizedBox();
                  },
                ),
              ),
            ],
          );
        }
      });
}
