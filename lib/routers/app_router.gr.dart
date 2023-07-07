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
    PrayersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const PrayersPage()),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
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
        child: WrappedRoute(child: const RosaryPage()),
      );
    },
    PrayerRoute.name: (routeData) {
      final args = routeData.argsAs<PrayerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PrayerPage(
          prayer: args.prayer,
          key: args.key,
        ),
      );
    },
    EmptyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyPage(),
      );
    },
    RosaryMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RosaryMainPage(),
      );
    },
    MisericordinaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MisericordinaPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    PrayerSectionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PrayerSectionPage(),
      );
    },
    RosarySectionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RosarySectionPage(),
      );
    },
  };
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

/// generated route for
/// [PrayerPage]
class PrayerRoute extends PageRouteInfo<PrayerRouteArgs> {
  PrayerRoute({
    required Prayer prayer,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PrayerRoute.name,
          args: PrayerRouteArgs(
            prayer: prayer,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PrayerRoute';

  static const PageInfo<PrayerRouteArgs> page = PageInfo<PrayerRouteArgs>(name);
}

class PrayerRouteArgs {
  const PrayerRouteArgs({
    required this.prayer,
    this.key,
  });

  final Prayer prayer;

  final Key? key;

  @override
  String toString() {
    return 'PrayerRouteArgs{prayer: $prayer, key: $key}';
  }
}

/// generated route for
/// [EmptyPage]
class EmptyRoute extends PageRouteInfo<void> {
  const EmptyRoute({List<PageRouteInfo>? children})
      : super(
          EmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RosaryMainPage]
class RosaryMainRoute extends PageRouteInfo<void> {
  const RosaryMainRoute({List<PageRouteInfo>? children})
      : super(
          RosaryMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'RosaryMainRoute';

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
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PrayerSectionPage]
class PrayerSectionRoute extends PageRouteInfo<void> {
  const PrayerSectionRoute({List<PageRouteInfo>? children})
      : super(
          PrayerSectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrayerSectionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RosarySectionPage]
class RosarySectionRoute extends PageRouteInfo<void> {
  const RosarySectionRoute({List<PageRouteInfo>? children})
      : super(
          RosarySectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'RosarySectionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
