import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:praying/theme/models/app_colors.dart';

class RosaryBeans extends StatelessWidget {
  final bool isFill;
  final double a;
  final double b;
  final double angle;
  final VoidCallback? onTap;

  const RosaryBeans({
    required this.isFill,
    required this.a,
    required this.b,
    required this.angle,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Transform(
        transform: Matrix4.identity()
          ..translate(
            a * math.cos(angle),
            b * math.sin(angle),
          ),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: isFill ? AppColors.primaryColor : Colors.transparent,
              border: Border.all(
                color: AppColors.primaryColor,
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      );
}
