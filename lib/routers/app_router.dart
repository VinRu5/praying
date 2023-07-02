import 'package:auto_route/auto_route.dart';
import 'package:praying/pages/dashboard_page/dashboard_page.dart';
import 'package:praying/pages/home_page/home_page.dart';
import 'package:praying/pages/misericordina_page/misericordina_page.dart';
import 'package:praying/pages/prayers_page/prayers_page.dart';
import 'package:praying/pages/rosary_page/rosary_page.dart';

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
            AutoRoute(path: "rosary", page: RosaryRoute.page),
            AutoRoute(path: "prayers", page: PrayersRoute.page),
            AutoRoute(path: "misericordina", page: MisericordinaRoute.page),
          ],
        ),
      ];
}
