import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:praying/routers/app_router.dart';
import 'package:praying/theme/models/praying_theme.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        RosaryRoute(),
        PrayersRoute(),
        MisericordinaRoute(),
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
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            selectedIconTheme: PrayingTheme.iconTheme,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Rosario',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Prehiere',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Misericordina',
                icon: Icon(Icons.home),
              ),
            ],
          ),
        );
      },
    );
  }
}
