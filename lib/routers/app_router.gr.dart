// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    PrayersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PrayersPage(),
      );
    },
    MisericordinaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MisericordinaPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardPage(),
      );
    },
    RosaryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RosaryPage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PrayersPage]
class PrayersRoute extends PageRouteInfo<void> {
  const PrayersRoute({List<PageRouteInfo>? children})
      : super(
          PrayersRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrayersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MisericordinaPage]
class MisericordinaRoute extends PageRouteInfo<void> {
  const MisericordinaRoute({List<PageRouteInfo>? children})
      : super(
          MisericordinaRoute.name,
          initialChildren: children,
        );

  static const String name = 'MisericordinaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RosaryPage]
class RosaryRoute extends PageRouteInfo<void> {
  const RosaryRoute({List<PageRouteInfo>? children})
      : super(
          RosaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'RosaryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
