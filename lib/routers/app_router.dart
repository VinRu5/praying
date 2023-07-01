import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:praying/pages/home_page/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Page,Route")
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: "/"),
      ];
}
