import 'package:flutter/material.dart';
import 'package:praying/models/rosary/mystery.dart';
import 'package:praying/theme/models/praying_theme.dart';
import 'package:praying/widgets/card_image.dart';

class MisteryContent extends StatelessWidget {
  final Mystery mistery;

  const MisteryContent({
    required this.mistery,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CardImage(
            child: Image.asset(
              "assets/images/${mistery.image}",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            mistery.title,
            style: PrayingTheme.of(context)?.prayerTitle,
            textAlign: TextAlign.end,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              mistery.text,
              style: PrayingTheme.of(context)?.bodyText,
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              mistery.reference,
              style: PrayingTheme.of(context)?.bodyBold,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      );
}
