import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/blocs/misericordina_cubit/misericordina_cubit.dart';
import 'package:praying/blocs/rosary_action_cubit/rosary_action_cubit.dart';
import 'package:praying/models/misericordina.dart';
import 'package:praying/pages/rosary_page/widgets/bullet_selected_page.dart';
import 'package:praying/services/data_service.dart';
import 'package:praying/theme/models/app_colors.dart';
import 'package:praying/theme/models/praying_theme.dart';
import 'package:praying/widgets/card_image.dart';
import 'package:praying/widgets/error_page.dart';
import 'package:praying/widgets/pray_loader.dart';
import 'package:praying/widgets/responsive_builder.dart';

import 'widgets/rosary_beans.dart';

@RoutePage()
class MisericordinaPage extends StatelessWidget {
  const MisericordinaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MisericordinaCubit>(
          create: (context) => MisericordinaCubit(
            context.read<DataService>(),
          )..getMisericordina(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          scrolledUnderElevation: 0,
          leading: IconButton(
            onPressed: () => ResponsiveBuilder.isMobile(context)
                ? context.router.pop()
                : context.read<RosaryActionCubit>().unselected(),
            icon: const FaIcon(
              FontAwesomeIcons.circleChevronLeft,
              color: AppColors.primaryColor,
            ),
          ),
          title: Text(
            "Misericordina",
            style: PrayingTheme.of(context)?.appBarTitle,
          ),
        ),
        body: BlocBuilder<MisericordinaCubit, MisericordinaState>(
          builder: (context, state) {
            if (state is MisericordinaLoading) {
              return const PrayLoader();
            }

            if (state is MisericordinaError) {
              return const ErrorPage(
                  message: "Non siamo riusciti a caricare i tuoi dati.\nRiprova.");
            }

            if (state is MisericordinaLoaded) {
              return _MisericordinaContent(
                misericordina: state.misericordina,
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}

class _MisericordinaContent extends StatefulWidget {
  final Misericordina misericordina;

  const _MisericordinaContent({
    required this.misericordina,
  });

  @override
  State<_MisericordinaContent> createState() => _MisericordinaContentState();
}

class _MisericordinaContentState extends State<_MisericordinaContent> {
  int selectedIndex = -1;
  static const beansNumber = 9;
  int pageSelected = 0;

  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24.0,
        ),
        physics: const BouncingScrollPhysics(),
        children: [
          CardImage(
            child: Image.asset(
              "assets/images/${widget.misericordina.image}",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            widget.misericordina.title,
            style: PrayingTheme.of(context)?.prayerTitle,
            textAlign: TextAlign.end,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              widget.misericordina.intro,
              style: PrayingTheme.of(context)?.bodyText,
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              widget.misericordina.cross,
              style: PrayingTheme.of(context)?.bodyBold,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              widget.misericordina.prayer,
              style: PrayingTheme.of(context)?.prayerBodyItalic,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              widget.misericordina.bigBead.title,
              style: PrayingTheme.of(context)?.bodyBold,
              textAlign: TextAlign.end,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              widget.misericordina.bigBead.text,
              style: PrayingTheme.of(context)?.prayerBody,
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              widget.misericordina.littleBead.title,
              style: PrayingTheme.of(context)?.bodyBold,
              textAlign: TextAlign.end,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 24.0,
            ),
            child: Text(
              widget.misericordina.littleBead.text,
              style: PrayingTheme.of(context)?.prayerBody,
              textAlign: TextAlign.justify,
            ),
          ),
          BulletSelectedPage(
            bulletNumber: 5,
            pageSelctedIndex: pageSelected,
            onPressed: (value) {
              setState(() {
                if (pageSelected != value) {
                  selectedIndex = -1;
                }
                pageSelected = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 0.0,
              left: 48.0,
              right: 48.0,
              bottom: 0.0,
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
                      onTap: () {
                        if (pageSelected < 5) {
                          if (selectedIndex >= -1 && selectedIndex < 9) {
                            setState(() => selectedIndex++);
                          } else {
                            setState(() {
                              selectedIndex = -1;
                              pageSelected++;
                            });
                          }
                        }
                      },
                    ),
                    growable: false,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              "${widget.misericordina.finalText3} x3",
              style: PrayingTheme.of(context)?.prayerBodyItalicBold,
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              widget.misericordina.finalText,
              style: PrayingTheme.of(context)?.prayerBodyMedium,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      );
}
