import 'package:flutter/material.dart';
import 'package:praying/pages/dashboard_page/animated_notch_bottom_bar/bottom_bar_painter.dart';
import 'package:praying/pages/dashboard_page/animated_notch_bottom_bar/notch_bottom_bar_utilities.dart';

/// Class to generate the NotchBottomBar
class AnimatedNotchBottomBar extends StatefulWidget {
  /// Controller for animation
  final NotchBottomBarController notchBottomBarController;

  /// List of items of bottom bar
  final List<BottomBarItem> bottomBarItems;

  /// Function called when an item was tapped
  final ValueChanged<int> onTap;

  /// Color of bottom bar
  final Color color;

  /// TextStyle to show bottom text
  final TextStyle? itemLabelStyle;

  /// Color of bottom bar
  final Color notchColor;

  /// Color of bottom bar border
  final Color notchBorderColor;

  /// Duration in milliseconds for animation
  final int durationInMilliSeconds;

  /// bottom bar width for web and desktop apps (It should be greater then 500 otherwise it will take media query width)
  final double bottomBarWidth;

  const AnimatedNotchBottomBar({
    Key? key,
    required this.notchBottomBarController,
    required this.bottomBarItems,
    required this.onTap,
    this.color = Colors.white,
    this.itemLabelStyle,
    this.notchColor = Colors.white,
    this.notchBorderColor = Colors.blue,
    this.durationInMilliSeconds = 300,
    this.bottomBarWidth = 500,
  }) : super(key: key);

  @override
  _AnimatedNotchBottomBarState createState() => _AnimatedNotchBottomBarState();
}

class _AnimatedNotchBottomBarState extends State<AnimatedNotchBottomBar>
    with SingleTickerProviderStateMixin {
  late double _screenWidth;
  int maxCount = 5;
  int currentIndex = 0;
  late final AnimationController _animationController;
  bool _isInitial = true;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width <= 500
        ? MediaQuery.of(context).size.width
        : widget.bottomBarWidth;
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.durationInMilliSeconds));
    kHeight = 72.0;
    kMargin = 14.0;
    widget.notchBottomBarController.addListener(() {
      _animationController.reset();
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// throws exception if list length is more then 5
    if (widget.bottomBarItems.length > 5) {
      throw Exception(' Bottom bar item length should not be more than 5');
    }

    /// uncomment
    if (widget.notchBottomBarController.index > widget.bottomBarItems.length - 1) {
      throw Exception(' Initial page index cannot be higher than bottom bar items length');
    }
    final double height = kHeight + kMargin * 2;

    return widget.bottomBarItems.length > maxCount
        ? Container()
        : AnimatedBuilder(
            animation: _animationController,
            builder: (BuildContext _, Widget? __) {
              ///to set any initial page
              double scrollPosition = widget.notchBottomBarController.index.toDouble();
              int? currentIndex = widget.notchBottomBarController.index;
              if (widget.notchBottomBarController.oldIndex != null) {
                _isInitial = false;
                scrollPosition = Tween<double>(
                        begin: widget.notchBottomBarController.oldIndex!.toDouble(),
                        end: widget.notchBottomBarController.index.toDouble())
                    // ignore: invalid_use_of_protected_member
                    .lerp(_animationController.value);
                currentIndex = widget.notchBottomBarController.index;
              } else {
                scrollPosition = widget.notchBottomBarController.index.toDouble();
                currentIndex = widget.notchBottomBarController.index;
              }

              return Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  CustomPaint(
                    size: Size(_screenWidth, height),
                    painter: BottomBarPainter(
                      position: _itemPosByScrollPosition(scrollPosition),
                      color: widget.color,
                      notchColor: widget.notchColor,
                      borderColor: widget.notchBorderColor,
                      borderSize: 3.0,
                    ),
                  ),
                  for (var i = 0; i < widget.bottomBarItems.length; i++) ...[
                    if (i == currentIndex && (_animationController.value == 1.0 || _isInitial))
                      Positioned(
                        top: kTopMargin,
                        left: kCircleRadius -
                            kCircleMargin / 2 +
                            _itemPosByScrollPosition(scrollPosition),
                        child: BottomBarActiveItem(
                          i,
                          itemWidget: widget.bottomBarItems[i].activeItem,
                          scrollPosition: scrollPosition,
                          onTap: widget.onTap,
                        ),
                      ),
                    if (i != currentIndex)
                      Positioned(
                        top: kMargin + (kHeight - kCircleRadius * 2) / 2,
                        left: kCircleMargin + _itemPosByIndex(i),
                        child: BottomBarInActiveItem(
                          i,
                          itemWidget: widget.bottomBarItems[i].inActiveItem,
                          label: widget.bottomBarItems[i].itemLabel,
                          onTap: (selectedIndex) {
                            widget.notchBottomBarController.jumpTo(selectedIndex);
                            widget.onTap.call(selectedIndex);
                          },
                          labelStyle:
                              widget.bottomBarItems[i].itemLabelStyle ?? widget.itemLabelStyle,
                        ),
                      ),
                  ],
                ],
              );
            },
          );
  }

  double _firstItemPosition(double spaceParameter) {
    return (_screenWidth - kMargin * 2) * spaceParameter;
  }

  double _lastItemPosition(double spaceParameter) {
    return _screenWidth -
        (_screenWidth - kMargin * 2) * spaceParameter -
        (kCircleRadius + kCircleMargin) * 2;
  }

  double _itemDistance() {
    return (_lastItemPosition(0.1) - _firstItemPosition(0.1)) / (widget.bottomBarItems.length - 1);
  }

  double _itemPosByScrollPosition(double scrollPosition) {
    return _firstItemPosition(0.1) + _itemDistance() * scrollPosition;
  }

  double _itemPosByIndex(int index) {
    return _firstItemPosition(0.1) + _itemDistance() * index;
  }
}
