import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:praying/models/rosary/mystery.dart';
import 'package:praying/theme/models/app_colors.dart';
import 'package:praying/theme/models/praying_theme.dart';
import 'package:praying/widgets/card_image.dart';

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
                    (index) => _RosaryBeans(
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

class _RosaryBeans extends StatelessWidget {
  final bool isFill;
  final double a;
  final double b;
  final double angle;
  final VoidCallback? onTap;

  const _RosaryBeans({
    required this.isFill,
    required this.a,
    required this.b,
    required this.angle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => Transform(
        transform: Matrix4.identity()
          ..translate(
            a * math.cos(angle),
            b * math.sin(angle),
          ),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: isFill ? AppColors.primaryColor : Colors.transparent,
              border: Border.all(
                color: AppColors.primaryColor,
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      );
}
