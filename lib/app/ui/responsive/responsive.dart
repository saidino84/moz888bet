import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  Widget? mobileLarge;
  Widget? tablet;
  final Widget desktop;

  ResponsiveLayout(
      {super.key, required this.mobile, this.tablet, required this.desktop});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool islargeMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;
  static bool isTable(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024 &&
      MediaQuery.of(context).size.width >= 850;
  static isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth >= 1024)
        return desktop;
      else if (constraints.maxWidth >= 700 && tablet != null)
        return tablet!;
      else if (_size.width >= 450 && mobileLarge != null) {
        return mobileLarge!;
      } else
        return mobile;
    }));
  }
}
