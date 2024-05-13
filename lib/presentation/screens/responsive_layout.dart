import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileBody,
      required this.desktopBody,
      required this.browserBody});

  final Widget mobileBody;
  final Widget desktopBody;
  final Widget browserBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobileBody;
      } else if (constraints.maxWidth < 1100) {
        return browserBody;
      } else {
        return desktopBody;
      }
    });
  }
}
