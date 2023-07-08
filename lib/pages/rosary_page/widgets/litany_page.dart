import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/blocs/rosary_cubit/rosary_cubit.dart';
import 'package:praying/models/rosary/litany.dart';
import 'package:praying/theme/models/praying_theme.dart';

class LitanyPage extends StatelessWidget {
  final Litany litany;

  const LitanyPage({
    required this.litany,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24.0,
        ),
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: litany.mercySection.litanyText.length,
            separatorBuilder: (context, index) => const SizedBox(height: 4.0),
            itemBuilder: (context, index) => Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    litany.mercySection.litanyText[index],
                    style: PrayingTheme.of(context)?.bodyText,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    litany.mercySection.response,
                    textAlign: TextAlign.end,
                    style: PrayingTheme.of(context)?.bodyBold,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            itemCount: litany.marySection.litanyText.length,
            itemBuilder: (context, index) => Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    litany.marySection.litanyText[index],
                    style: PrayingTheme.of(context)?.bodyText,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    litany.marySection.response,
                    textAlign: TextAlign.end,
                    style: PrayingTheme.of(context)?.bodyBold,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: litany.lambSection.litanyText.length,
            itemBuilder: (context, index) => Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    litany.lambSection.response,
                    style: PrayingTheme.of(context)?.bodyText,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    litany.lambSection.litanyText[index],
                    textAlign: TextAlign.end,
                    style: PrayingTheme.of(context)?.bodyBold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
          FilledButton(
            onPressed: () => context.read<RosaryCubit>().getRosaryFinal(),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Avanti",
                    style: PrayingTheme.of(context)?.primaryButtonText,
                    textAlign: TextAlign.center,
                  ),
                ),
                const FaIcon(
                  FontAwesomeIcons.chevronRight,
                ),
              ],
            ),
          ),
        ],
      );
}
