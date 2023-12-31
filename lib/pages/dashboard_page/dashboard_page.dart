import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/pages/dashboard_page/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:praying/pages/dashboard_page/animated_notch_bottom_bar/notch_bottom_bar_utilities.dart';
import 'package:praying/routers/app_router.dart';
import 'package:praying/theme/models/app_colors.dart';
import 'package:praying/theme/models/praying_theme.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({
    super.key,
  });

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  static const _sizeActiveIcon = 22.0;
  static const _sizeDeactiveIcon = 18.0;

  final NotchBottomBarController _notchController = NotchBottomBarController();
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        RosaryMainRoute(),
        PrayersRoute(),
        SettingsRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        // the passed child is technically our animated selected-tab page
        child: child,
      ),
      builder: (context, child) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        //alterntivly you could use a global key
        return Scaffold(
          body: child,
          bottomNavigationBar: AnimatedNotchBottomBar(
            notchBottomBarController: _notchController,
            notchColor: _getColors(tabsRouter.activeIndex),
            notchBorderColor: _getColors(tabsRouter.activeIndex),
            color: Theme.of(context).hoverColor,
            bottomBarWidth: MediaQuery.of(context).size.width,
            bottomBarItems: [
              BottomBarItem(
                itemLabel: 'Home',
                itemLabelStyle: PrayingTheme.of(context)?.labelMenu,
                inActiveItem: const FaIcon(
                  FontAwesomeIcons.house,
                  color: AppColors.primaryColor,
                  size: _sizeDeactiveIcon,
                ),
                activeItem: const FaIcon(
                  FontAwesomeIcons.house,
                  color: AppColors.iconOnPrimary,
                  size: _sizeActiveIcon,
                ),
              ),
              BottomBarItem(
                itemLabel: 'Rosario',
                itemLabelStyle: PrayingTheme.of(context)?.labelMenu,
                inActiveItem: const FaIcon(
                  FontAwesomeIcons.solidHeart,
                  color: AppColors.primaryColor,
                  size: _sizeDeactiveIcon,
                ),
                activeItem: const FaIcon(
                  FontAwesomeIcons.solidHeart,
                  color: AppColors.iconOnPrimary,
                  size: _sizeActiveIcon,
                ),
              ),
              BottomBarItem(
                itemLabel: 'Preghiere',
                itemLabelStyle: PrayingTheme.of(context)?.labelMenu,
                inActiveItem: const FaIcon(
                  FontAwesomeIcons.handsPraying,
                  color: AppColors.primaryColor,
                  size: _sizeDeactiveIcon,
                ),
                activeItem: const FaIcon(
                  FontAwesomeIcons.handsPraying,
                  color: AppColors.iconOnPrimary,
                  size: _sizeActiveIcon,
                ),
              ),
              BottomBarItem(
                itemLabel: 'Profilo',
                itemLabelStyle: PrayingTheme.of(context)?.labelMenu,
                inActiveItem: const FaIcon(
                  FontAwesomeIcons.gear,
                  color: AppColors.primaryColor,
                  size: _sizeDeactiveIcon,
                ),
                activeItem: const FaIcon(
                  FontAwesomeIcons.gear,
                  color: AppColors.iconOnPrimary,
                  size: _sizeActiveIcon,
                ),
              ),
            ],
            onTap: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }

  Color _getColors(int index) {
    switch (index) {
      case 0:
        return AppColors.iconHome;
      case 1:
        return AppColors.iconRosary;
      case 2:
        return AppColors.iconPrayer;
      case 3:
        return AppColors.iconSettings;
      default:
        return AppColors.primaryColor;
    }
  }
}
