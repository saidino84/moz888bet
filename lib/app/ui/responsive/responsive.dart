import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  Widget? tablet;
  final Widget desktop;

  ResponsiveLayout(
      {super.key, required this.mobile, this.tablet, required this.desktop});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;
  static bool isTable(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;
  static isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth >= 1100)
        return desktop;
      else if (constraints.maxWidth >= 850 && tablet != null)
        return tablet!;
      else
        return mobile;
    }));
  }
}
