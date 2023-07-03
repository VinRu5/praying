import 'package:flutter/material.dart';
import 'package:praying/pages/dashboard_page/animated_notch_bottom_bar/notch_bottom_bar_utilities.dart';

class BottomBarPainter extends CustomPainter {
  BottomBarPainter({
    required this.position,
    required this.color,
    required this.borderColor,
    required this.borderSize,
    required this.notchColor,
  })  : _paint = Paint()
          ..color = color
          ..isAntiAlias = true,
        _paintStroke = Paint()
          ..color = borderColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = borderSize
          ..isAntiAlias = true,
        _shadowColor = Colors.grey.shade600,
        _notchPaint = Paint()
          ..color = notchColor
          ..isAntiAlias = true;

  /// position
  final double position;

  /// Color for the bottom bar
  final Color color;

  /// Color for the bottom bar border
  final Color borderColor;

  /// Size of border
  final double borderSize;

  /// Paint value to custom painter
  final Paint _paint;

  /// Paint value to custom stroke painter
  final Paint _paintStroke;

  /// Shadow Color
  final Color _shadowColor;

  /// Paint Value of notch
  final Paint _notchPaint;

  /// Color for the notch
  final Color notchColor;

  @override
  void paint(Canvas canvas, Size size) {
    _drawBar(canvas, size, _paint);
    _drawBar(canvas, size, _paintStroke);
    _drawFloatingCircle(canvas);
  }

  @override
  bool shouldRepaint(BottomBarPainter oldDelegate) {
    return position != oldDelegate.position || color != oldDelegate.color;
  }

  /// draw bottom bar
  void _drawBar(Canvas canvas, Size size, Paint paint) {
    const double left = 0.0;
    final double right = size.width;
    final double top = kMargin;
    final double bottom = top + 100;

    final path = Path()
      ..moveTo(left, top)
      ..lineTo(position - kTopRadius, top)
      ..relativeArcToPoint(
        const Offset(kTopRadius, kTopRadius),
        radius: const Radius.circular(kTopRadius),
      )
      ..relativeArcToPoint(
        const Offset((kCircleRadius + kCircleMargin) * 2, 0.0),
        radius: const Radius.circular(kCircleRadius + kCircleMargin),
        clockwise: false,
      )
      ..relativeArcToPoint(
        const Offset(kTopRadius, -kTopRadius),
        radius: const Radius.circular(kTopRadius),
      )
      ..lineTo(right + borderSize, top)
      ..lineTo(right + borderSize, bottom)
      ..lineTo(left - borderSize, bottom)
      ..lineTo(left - borderSize, top);

    canvas.drawPath(path, paint);
  }

  /// Function used to draw the circular indicator
  void _drawFloatingCircle(Canvas canvas) {
    final path = Path()
      ..addArc(
        Rect.fromCircle(
          center: Offset(
            position + kCircleMargin + kCircleRadius,
            kMargin + kCircleMargin,
          ),
          radius: kCircleRadius,
        ),
        0,
        kPi * 2,
      );

    canvas.drawShadow(path, _shadowColor, 5.0, true);

    canvas.drawPath(path, _notchPaint);
  }
}
