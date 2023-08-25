import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/theme/cubit/theme_cubit.dart';
import 'package:praying/theme/models/app_colors.dart';
import 'package:praying/theme/models/theme.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40.0,
            horizontal: 24.0,
          ),
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) => Row(
              children: [
                Flexible(
                  child: Text(
                    state.theme.localize(context) ?? '',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(width: 8.0),
                AnimatedToggleSwitch<ThemeType>.rolling(
                  current: state.theme,
                  values: const [
                    ThemeType.system,
                    ThemeType.light,
                    ThemeType.dark,
                  ],
                  borderColor: AppColors.primaryColor,
                  indicatorColor: AppColors.primaryColor,
                  onChanged: (i) {
                    context.read<ThemeCubit>().setTheme(i);
                  },
                  iconBuilder: (ThemeType value, Size iconSize, bool foreground) {
                    IconData data = FontAwesomeIcons.circleHalfStroke;
                    if (value == ThemeType.system) {
                      data = FontAwesomeIcons.circleHalfStroke;
                    } else if (value == ThemeType.light) {
                      data = FontAwesomeIcons.sun;
                    } else if (value == ThemeType.dark) {
                      data = FontAwesomeIcons.moon;
                    }
                    return Icon(
                      data,
                      size: iconSize.shortestSide,
                      color: foreground ? AppColors.iconOnPrimary : AppColors.primaryColor,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
}
