import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/models/rosary/mysteries.dart';
import 'package:praying/routers/app_router.dart';
import 'package:praying/theme/models/praying_theme.dart';

@RoutePage()
class RosaryMainPage extends StatefulWidget {
  const RosaryMainPage({super.key});

  @override
  State<RosaryMainPage> createState() => _RosaryMainPageState();
}

class _RosaryMainPageState extends State<RosaryMainPage> {
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
                FilledButton(
                  onPressed: () => context.router.push(
                    RosaryRoute(type: MisteriesType.joyfulMysteries),
                  ),
                  child: Text(
                    "Misteri Gaudiosi",
                    style: PrayingTheme.of(context)?.primaryButtonText,
                  ),
                ),
                FilledButton(
                  onPressed: () => context.router.push(
                    RosaryRoute(type: MisteriesType.lightMysteries),
                  ),
                  child: Text(
                    "Misteri Luminosi",
                    style: PrayingTheme.of(context)?.primaryButtonText,
                  ),
                ),
                FilledButton(
                  onPressed: () => context.router.push(
                    RosaryRoute(type: MisteriesType.sorrowfulMysteries),
                  ),
                  child: Text(
                    "Misteri Dolorosi",
                    style: PrayingTheme.of(context)?.primaryButtonText,
                  ),
                ),
                FilledButton(
                  onPressed: () => context.router.push(
                    RosaryRoute(type: MisteriesType.gloriusMysteries),
                  ),
                  child: Text(
                    "Misteri Gloriosi",
                    style: PrayingTheme.of(context)?.primaryButtonText,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40.0),
          FilledButton(
            onPressed: () => context.router.push(const MisericordinaRoute()),
            child: Text(
              "Misericordina",
              style: PrayingTheme.of(context)?.primaryButtonText,
            ),
          ),
        ],
      );
}
