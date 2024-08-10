import 'package:flutter/material.dart';
import 'package:myapp/Pages/Mobile/mobWelcomePage.dart';
import 'package:myapp/Pages/Tab/tabWelcomePage.dart';
import 'package:myapp/Widgets/responsiveLayout.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: MobWelcomePage(),
      tablet: TabWelcomePage(),
    );
  }
}
