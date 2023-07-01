import 'package:flutter/material.dart';
import 'package:praying/di/dependency_injector.dart';
import 'package:praying/routers/app_router.dart';

class App extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) => DependencyInjector(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          onGenerateTitle: (context) => "Praying",
          routerConfig: _appRouter.config(),
        ),
      );
}
