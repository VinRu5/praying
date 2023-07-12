import 'package:flutter/material.dart';
import 'package:praying/theme/models/app_colors.dart';

typedef BulletCallback = Function(int value);

class BulletSelectedPage extends StatelessWidget {
  final int bulletNumber;
  final int pageSelctedIndex;
  final BulletCallback onPressed;

  const BulletSelectedPage({
    required this.bulletNumber,
    required this.pageSelctedIndex,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: SizedBox(
            height: 15.0,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: bulletNumber,
              separatorBuilder: (context, index) => const SizedBox(width: 16.0),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => onPressed(index),
                child: Container(
                  width: pageSelctedIndex == index ? 30 : 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: pageSelctedIndex < index ? null : AppColors.primaryColor,
                    border: Border.all(
                      color: AppColors.primaryColor,
                      width: 2,
                    ),
                    borderRadius: pageSelctedIndex == index ? BorderRadius.circular(60.0) : null,
                    shape: pageSelctedIndex == index ? BoxShape.rectangle : BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
