import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/rosary_cubit/rosary_cubit.dart';
import 'package:praying/models/rosary/intro_rosary.dart';
import 'package:praying/models/rosary/mysteries.dart';
import 'package:praying/theme/models/praying_theme.dart';
import 'package:praying/widgets/card_image.dart';

class RosaryIntroPage extends StatelessWidget {
  final IntroRosary introRosary;
  final MisteriesType misteryType;

  const RosaryIntroPage({
    required this.introRosary,
    required this.misteryType,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.all(16.0),
        physics: const BouncingScrollPhysics(),
        children: [
          CardImage(
            child: Image.asset("assets/images/${introRosary.image}"),
          ),
          Text(
            introRosary.title,
            style: PrayingTheme.of(context)?.prayerTitle,
            textAlign: TextAlign.end,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              introRosary.introText,
              style: PrayingTheme.of(context)?.bodyText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              introRosary.cross,
              style: PrayingTheme.of(context)?.bodyBold,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              introRosary.godText,
              style: PrayingTheme.of(context)?.prayerBodyItalic,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              introRosary.structure,
              style: PrayingTheme.of(context)?.prayerBody,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: FilledButton(
              onPressed: () => context.read<RosaryCubit>().getMisteries(misteryType),
              child: Text(
                "Inizia",
                style: PrayingTheme.of(context)?.primaryButtonText,
              ),
            ),
          ),
        ],
      );
}
