import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/models/prayer.dart';
import 'package:praying/theme/models/app_colors.dart';

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
          // title: Text(
          //   "La mia preghiera",
          //   style: Theme.of(context).textTheme.headlineMedium,
          // ),
        ),
        body: const Placeholder(),
      );
}
