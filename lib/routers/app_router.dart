import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:praying/models/prayer.dart';
import 'package:praying/pages/dashboard_page/dashboard_page.dart';
import 'package:praying/pages/home_page/home_page.dart';
import 'package:praying/pages/rosary_page/misericordina_page.dart';
import 'package:praying/pages/prayer_page/prayer_page.dart';
import 'package:praying/pages/prayers_page/prayers_page.dart';
import 'package:praying/pages/rosary_page/rosary_main_page.dart';
import 'package:praying/pages/rosary_page/rosary_page.dart';
import 'package:praying/pages/settings_page/settinga_page.dart';
import 'package:praying/widgets/empty_page.dart';
import 'package:praying/widgets/prayer_section.dart';
import 'package:praying/widgets/rosary_section.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Page,Route")
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: "/",
          page: DashboardRoute.page,
          children: [
            AutoRoute(path: "", page: HomeRoute.page),
            AutoRoute(
              path: "rosary",
              page: RosarySectionRoute.page,
              children: [
                AutoRoute(path: "", page: RosaryMainRoute.page),
                AutoRoute(path: "details", page: RosaryRoute.page),
                AutoRoute(path: "misericordina", page: MisericordinaRoute.page),
              ],
            ),
            AutoRoute(
              path: "prayers",
              page: PrayerSectionRoute.page,
              children: [
                AutoRoute(path: "", page: PrayersRoute.page),
                AutoRoute(path: "details", page: PrayerRoute.page),
              ],
            ),
            AutoRoute(path: "settings", page: SettingsRoute.page),
          ],
        ),
      ];
}
