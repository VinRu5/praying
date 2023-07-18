import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:praying/models/rosary/mystery.dart';
import 'package:praying/pages/rosary_page/widgets/rosary_beans.dart';
import 'package:praying/theme/models/praying_theme.dart';
import 'package:praying/widgets/card_image.dart';
import 'package:praying/widgets/responsive_builder.dart';

class MisteryContent extends StatefulWidget {
  final Mystery mistery;

  const MisteryContent({
    required this.mistery,
    super.key,
  });

  @override
  State<MisteryContent> createState() => _MisteryContentState();
}

class _MisteryContentState extends State<MisteryContent> {
  int selectedIndex = -1;
  static const beansNumber = 9;

  @override
  Widget build(BuildContext context) => ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CardImage(
            maxHeight: ResponsiveBuilder.isMobile(context) ? 300.0 : 500.0,
            child: Image.asset(
              "assets/images/${widget.mistery.image}",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            widget.mistery.title,
            style: PrayingTheme.of(context)?.prayerTitle,
            textAlign: TextAlign.end,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              widget.mistery.text,
              style: PrayingTheme.of(context)?.bodyText,
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              widget.mistery.reference,
              style: PrayingTheme.of(context)?.bodyBold,
              textAlign: TextAlign.end,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 24.0,
              left: 32.0,
              right: 32.0,
              bottom: 16.0,
            ),
            child: Text(
              "Se vuoi puoi tenere il segno tappando sui grani della coroncina",
              style: PrayingTheme.of(context)?.labelMistery,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  alignment: Alignment.topCenter,
                  children: List.generate(
                    10,
                    (index) => RosaryBeans(
                      isFill: selectedIndex >= index,
                      a: (constraints.maxWidth / 2) - 20,
                      b: constraints.maxHeight - 30,
                      angle: math.pi * ((beansNumber - index) / beansNumber),
                      onTap: () => setState(() => selectedIndex++),
                    ),
                    growable: false,
                  ),
                );
              },
            ),
          ),
        ],
      );
}
