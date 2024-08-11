import 'package:flutter/material.dart';

class Responsive {
  static double width(BuildContext context) => MediaQuery.of(context).size.width;
  static double height(BuildContext context) => MediaQuery.of(context).size.height;
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 500;
  static bool isTable(BuildContext context) => MediaQuery.of(context).size.width < 500 && MediaQuery.of(context).size.width >= 1100;
  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1100;
}
