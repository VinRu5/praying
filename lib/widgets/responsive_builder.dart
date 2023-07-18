import 'package:flutter/material.dart';

typedef ResponsiveWidgetBuilder = Widget Function(BuildContext context, DeviceType devType);

class ResponsiveBuilder extends StatelessWidget {
  final ResponsiveWidgetBuilder builder;

  static const double _widthDesktop = 1400;
  static const double _widthTablet = 800;

  const ResponsiveBuilder({required this.builder, super.key});

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) {
          DeviceType devType = DeviceType.phone;

          if (constraints.maxWidth > _widthDesktop) {
            devType = DeviceType.desktop;
          } else if (constraints.maxWidth > _widthTablet) {
            devType = DeviceType.tablet;
          }

          return builder(context, devType);
        },
      );

  static DeviceType getDevType(BuildContext context) {
    DeviceType devType = DeviceType.phone;

    if (MediaQuery.of(context).size.width > _widthDesktop) {
      devType = DeviceType.desktop;
    } else if (MediaQuery.of(context).size.width > _widthTablet) {
      devType = DeviceType.tablet;
    }

    return devType;
  }

  static bool isMobile(context) => getDevType(context) == DeviceType.phone;
}

enum DeviceType {
  phone,
  tablet,
  desktop;

  bool operator <(DeviceType other) {
    return index < other.index;
  }

  bool operator <=(DeviceType other) {
    return index <= other.index;
  }

  bool operator >(DeviceType other) {
    return index > other.index;
  }

  bool operator >=(DeviceType other) {
    return index >= other.index;
  }
}
