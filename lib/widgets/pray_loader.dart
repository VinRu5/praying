import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:praying/theme/models/app_colors.dart';

class PrayLoader extends StatelessWidget {
  final double size;

  const PrayLoader({
    this.size = 100,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SpinKitPumpingHeart(
                itemBuilder: (BuildContext context, int index) {
                  return FaIcon(
                    FontAwesomeIcons.heart,
                    color: AppColors.loaderSecondary,
                    size: size + (size / 1.3),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SpinKitPumpingHeart(
                itemBuilder: (BuildContext context, int index) {
                  return FaIcon(
                    FontAwesomeIcons.heart,
                    color: AppColors.contrastColor.withOpacity(.5),
                    size: size + (size / 1.5),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SpinKitPumpingHeart(
                itemBuilder: (BuildContext context, int index) {
                  return FaIcon(
                    FontAwesomeIcons.heart,
                    color: AppColors.successColor,
                    size: size + (size / 2),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SpinKitPumpingHeart(
                itemBuilder: (BuildContext context, int index) {
                  return FaIcon(
                    FontAwesomeIcons.heart,
                    color: AppColors.primaryColor,
                    size: size + (size / 3),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SpinKitPumpingHeart(
                itemBuilder: (BuildContext context, int index) {
                  return FaIcon(
                    FontAwesomeIcons.heart,
                    color: AppColors.secondaryColor,
                    size: size + (size / 4),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SpinKitPumpingHeart(
                itemBuilder: (BuildContext context, int index) {
                  return FaIcon(
                    FontAwesomeIcons.solidHeart,
                    color: AppColors.primaryColorShade,
                    size: size,
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SpinKitPumpingHeart(
                itemBuilder: (BuildContext context, int index) {
                  return FaIcon(
                    FontAwesomeIcons.heart,
                    color: AppColors.primaryColor,
                    size: size,
                  );
                },
              ),
            ),
          ],
        ),
      );
}
