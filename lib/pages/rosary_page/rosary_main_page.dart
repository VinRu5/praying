import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:praying/routers/app_router.dart';

@RoutePage()
class RosaryMainPage extends StatelessWidget {
  const RosaryMainPage({super.key});

  @override
  Widget build(BuildContext context) => ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 120.0,
          horizontal: 16.0,
        ),
        children: [
          FilledButton(
            onPressed: () => context.router.push(const RosaryRoute()),
            child: Text(
              "Rosario",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(height: 40.0),
          FilledButton(
            onPressed: () => context.router.push(const MisericordinaRoute()),
            child: Text(
              "Misericordina",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      );
}
