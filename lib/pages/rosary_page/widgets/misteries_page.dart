import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praying/blocs/rosary_cubit/rosary_cubit.dart';
import 'package:praying/models/rosary/mysteries.dart';
import 'package:praying/pages/rosary_page/widgets/mistery_content.dart';
import 'package:praying/theme/models/app_colors.dart';
import 'package:praying/theme/models/praying_theme.dart';

typedef BulletCallback = Function(int value);

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
            _BulletSelectedPage(
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

class _BulletSelectedPage extends StatelessWidget {
  final int bulletNumber;
  final int pageSelctedIndex;
  final BulletCallback onPressed;

  const _BulletSelectedPage({
    required this.bulletNumber,
    required this.pageSelctedIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: SizedBox(
            height: 15.0,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: bulletNumber,
              separatorBuilder: (context, index) => const SizedBox(width: 16.0),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => onPressed(index),
                child: Container(
                  width: pageSelctedIndex == index ? 30 : 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: pageSelctedIndex < index ? null : AppColors.primaryColor,
                    border: Border.all(
                      color: AppColors.primaryColor,
                      width: 2,
                    ),
                    borderRadius: pageSelctedIndex == index ? BorderRadius.circular(60.0) : null,
                    shape: pageSelctedIndex == index ? BoxShape.rectangle : BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
