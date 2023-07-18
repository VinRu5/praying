import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/blocs/rosary_action_cubit/rosary_action_cubit.dart';
import 'package:praying/models/rosary/mysteries.dart';
import 'package:praying/routers/app_router.dart';
import 'package:praying/theme/models/praying_theme.dart';
import 'dart:math' as math;

import 'package:praying/widgets/responsive_builder.dart';

class ButtonListNavigation extends StatefulWidget {
  const ButtonListNavigation({super.key});

  @override
  State<ButtonListNavigation> createState() => _ButtonListNavigationState();
}

class _ButtonListNavigationState extends State<ButtonListNavigation> {
  bool isOpen = false;
  double rotate = 0.0;

  @override
  Widget build(BuildContext context) => ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 120.0,
          horizontal: 16.0,
        ),
        children: [
          FilledButton(
            onPressed: () {
              setState(() {
                isOpen = !isOpen;
                rotate = isOpen ? 1.0 : 0.0;
              });
            },
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Rosario",
                    style: PrayingTheme.of(context)?.primaryButtonText,
                    textAlign: TextAlign.center,
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  child: Transform.rotate(
                    angle: math.pi * rotate,
                    child: const FaIcon(
                      FontAwesomeIcons.chevronUp,
                      size: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: isOpen,
            child: ListView(
              padding: const EdgeInsets.only(
                left: 50.0,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FilledButton(
                    onPressed: () => ResponsiveBuilder.isMobile(context)
                        ? context.router.push(
                            RosaryRoute(type: MisteriesType.joyfulMysteries),
                          )
                        : context
                            .read<RosaryActionCubit>()
                            .selectedRosary(MisteriesType.joyfulMysteries),
                    child: Text(
                      "Misteri Gaudiosi",
                      style: PrayingTheme.of(context)?.primaryButtonText,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FilledButton(
                    onPressed: () => ResponsiveBuilder.isMobile(context)
                        ? context.router.push(
                            RosaryRoute(type: MisteriesType.lightMysteries),
                          )
                        : context
                            .read<RosaryActionCubit>()
                            .selectedRosary(MisteriesType.lightMysteries),
                    child: Text(
                      "Misteri Luminosi",
                      style: PrayingTheme.of(context)?.primaryButtonText,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FilledButton(
                    onPressed: () => ResponsiveBuilder.isMobile(context)
                        ? context.router.push(
                            RosaryRoute(type: MisteriesType.sorrowfulMysteries),
                          )
                        : context
                            .read<RosaryActionCubit>()
                            .selectedRosary(MisteriesType.sorrowfulMysteries),
                    child: Text(
                      "Misteri Dolorosi",
                      style: PrayingTheme.of(context)?.primaryButtonText,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FilledButton(
                    onPressed: () => ResponsiveBuilder.isMobile(context)
                        ? context.router.push(
                            RosaryRoute(type: MisteriesType.gloriusMysteries),
                          )
                        : context
                            .read<RosaryActionCubit>()
                            .selectedRosary(MisteriesType.gloriusMysteries),
                    child: Text(
                      "Misteri Gloriosi",
                      style: PrayingTheme.of(context)?.primaryButtonText,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40.0),
          FilledButton(
            onPressed: () => ResponsiveBuilder.isMobile(context)
                ? context.router.push(const MisericordinaRoute())
                : context.read<RosaryActionCubit>().selectedRosary(null),
            child: Text(
              "Misericordina",
              style: PrayingTheme.of(context)?.primaryButtonText,
            ),
          ),
        ],
      );
}
