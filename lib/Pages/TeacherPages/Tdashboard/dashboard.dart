import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/TeacherPages/widgets/DashboardBody.dart';
import 'package:myapp/Pages/TeacherPages/widgets/DashboardHeader.dart';

class TDashboardPage extends StatelessWidget {
  const TDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SvgPicture.asset(
              AssetsIamge.bgDesignSVG,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            ListView(
              children: const [
                SizedBox(height: 10),
                TDashboardHeader(),
                SizedBox(height: 20),
                TDashboardBody(),
                SizedBox(height: 30)

              ],
            ),

          ],
        ));
  }
}
