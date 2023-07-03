import 'package:flutter/material.dart';

/// margin
double kMargin = 0.0;

/// bottom bar height
double kHeight = 72.0;

/// notch circle circle radius
const double kCircleRadius = 30.0;

/// margin between notch and circle
const double kCircleMargin = 8.0;

const double kTopRadius = 10.0;

/// top margin
const double kTopMargin = 10.0;

/// notch radius
const double kBottomRadius = 28.0;

/// bottom bar item size
const double kIconSize = 24.0;

/// Pi value
const double kPi = 3.1415926535897932;

class NotchBottomBarController extends ChangeNotifier {
  int index;
  int? oldIndex;

  NotchBottomBarController({this.index = 0});

  jumpTo(int index) {
    oldIndex = this.index;
    this.index = index;
    notifyListeners();
  }
}

class BottomBarItem {
  const BottomBarItem({
    required this.inActiveItem,
    required this.activeItem,
    this.itemLabel,
    this.itemLabelStyle,
  });

  /// Selected bottom bar item
  final Widget inActiveItem;

  /// Un selected bottom bar item
  final Widget activeItem;

  /// bottom bar item label
  final String? itemLabel;

  /// bottom bar item style
  final TextStyle? itemLabelStyle;
}

class BottomBarActiveItem extends StatelessWidget {
  const BottomBarActiveItem(
    this.index, {
    super.key,
    required this.itemWidget,
    required this.onTap,
    required this.scrollPosition,
  });

  /// item index
  final int index;

  /// item
  final Widget itemWidget;

  /// Double value to indicate the item position
  final double scrollPosition;

  /// Function called when an item was tapped
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    final icon = itemWidget;
    return GestureDetector(
      child: SizedBox.fromSize(
        size: const Size(kIconSize, kIconSize),
        child: Opacity(opacity: kPi * 2 * (scrollPosition % 1) == 0 ? 1 : 0, child: icon),
      ),
      onTap: () => onTap(index),
    );
  }
}

/// Class to generate the inactive icon on bottom bar
class BottomBarInActiveItem extends StatelessWidget {
  const BottomBarInActiveItem(
    this.index, {
    super.key,
    required this.itemWidget,
    required this.onTap,
    this.label,
    this.labelStyle,
  });

  /// item index
  final int index;

  /// item widget
  final Widget itemWidget;

  /// String to indicate the label item
  final String? label;

  /// Value to indicate the label Style
  final TextStyle? labelStyle;

  /// Function called when an item was tapped
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        color: Colors.transparent,
        child: SizedBox.fromSize(
          size: const Size(kCircleRadius * 2.5, kCircleRadius * 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              itemWidget,
              if (label != null) ...[
                const SizedBox(height: 5.0),
                Text(
                  label!,
                  style: labelStyle ??
                      TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12.0,
                      ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
