import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/rosary_cubit/rosary_cubit.dart';
import 'package:praying/models/rosary/mysteries.dart';
import 'package:praying/pages/rosary_page/widgets/bullet_selected_page.dart';
import 'package:praying/pages/rosary_page/widgets/mistery_content.dart';
import 'package:praying/theme/models/praying_theme.dart';

class MisteriesPage extends StatefulWidget {
  final Misteries misteries;

  const MisteriesPage({
    required this.misteries,
    super.key,
  });

  @override
  State<MisteriesPage> createState() => _MisteriesPageState();
}

class _MisteriesPageState extends State<MisteriesPage> {
  int pageSelected = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.misteries.title,
                    style: PrayingTheme.of(context)?.prayerTitle,
                  ),
                ),
                Visibility(
                  visible: (pageSelected + 1) == widget.misteries.misteries.length,
                  child: FilledButton(
                    onPressed: () => context.read<RosaryCubit>().getLitany(),
                    child: Text(
                      "Avanti",
                      style: PrayingTheme.of(context)?.bodyText,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                widget.misteries.days,
                style: PrayingTheme.of(context)?.prayerBodyItalicBold,
              ),
            ),
            BulletSelectedPage(
              bulletNumber: widget.misteries.misteries.length,
              pageSelctedIndex: pageSelected,
              onPressed: (value) {
                setState(() => pageSelected = value);
                _pageController.jumpToPage(value);
              },
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: widget.misteries.misteries.length,
                itemBuilder: (context, index) => MisteryContent(
                  mistery: widget.misteries.misteries[index],
                ),
                onPageChanged: (value) => setState(() => pageSelected = value),
              ),
            ),
          ],
        ),
      );
}
