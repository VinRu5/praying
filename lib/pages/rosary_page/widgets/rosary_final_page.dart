import 'package:flutter/material.dart';
import 'package:praying/models/rosary/final_rosary.dart';
import 'package:praying/theme/models/praying_theme.dart';
import 'package:praying/widgets/card_image.dart';

class RosaryFinalPage extends StatelessWidget {
  final FinalRosary finalRosary;

  const RosaryFinalPage({
    required this.finalRosary,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.all(16.0),
        physics: const BouncingScrollPhysics(),
        children: [
          CardImage(
            child: Image.asset(
              "assets/images/${finalRosary.image}",
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              finalRosary.prayerMary,
              style: PrayingTheme.of(context)?.prayerBodyItalicBold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              finalRosary.prayer,
              style: PrayingTheme.of(context)?.prayerBodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
}
