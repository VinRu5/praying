import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/theme/models/app_colors.dart';

@RoutePage()
class MisericordinaPage extends StatelessWidget {
  const MisericordinaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => context.router.pop(),
          icon: const FaIcon(
            FontAwesomeIcons.circleChevronLeft,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: const Center(
        child: Text("Misericordina"),
      ),
    );
  }
}
