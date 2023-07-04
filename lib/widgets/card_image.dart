import 'package:flutter/material.dart';
import 'package:praying/theme/models/app_colors.dart';

class CardImage extends StatelessWidget {
  final Widget child;

  const CardImage({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: child,
        ),
      );
}
