import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/models/prayer.dart';
import 'package:praying/theme/models/app_colors.dart';
import 'package:praying/theme/models/praying_theme.dart';
import 'package:praying/widgets/card_image.dart';

@RoutePage()
class PrayerPage extends StatelessWidget {
  final Prayer prayer;

  const PrayerPage({
    required this.prayer,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
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
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(
            bottom: 40.0,
            left: 16.0,
            right: 16.0,
          ),
          children: [
            CardImage(
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 300.0,
                  maxWidth: 700.0,
                ),
                child: Image.asset(
                  "assets/images/${prayer.image}",
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Text(
              prayer.title,
              style: PrayingTheme.of(context)?.prayerTitle,
              textAlign: TextAlign.end,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Text(
                prayer.text,
                style: PrayingTheme.of(context)?.prayerBody,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
}
