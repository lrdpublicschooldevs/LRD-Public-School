import 'package:flutter/material.dart';
import 'package:myapp/Widgets/responsiveLayout.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyProgressIndicator extends StatelessWidget {
  final double percent;
  final String lable;
  const MyProgressIndicator({super.key, required this.percent, required this.lable});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return CircularPercentIndicator(
      radius: isMobile ? MediaQuery.of(context).size.width * .13 : 60,
      lineWidth: 10.0,
      percent: percent,
      center: Text(
        lable,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      circularStrokeCap: CircularStrokeCap.round,
      animationDuration: 600,
      backgroundColor: Colors.red,
      progressColor: Colors.green,
    );
  }
}
