import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/Transport/Widgets/BusInfoPage.dart';
import 'package:myapp/Pages/Student_Page/Transport/Widgets/DiverInfoPage.dart';
import 'package:myapp/Pages/Student_Page/Transport/Widgets/HelplinePage.dart';

class TransportPage extends StatelessWidget {
  const TransportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Transport",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Stack(
        children: [
          SvgPicture.asset(
            AssetsImage.bgDesignSVG,
            fit: BoxFit.fill,
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          ListView(
            children: const [
              BusInfoPage(),
              SizedBox(height: 10),
              DriverInfoPage(),
              SizedBox(height: 10),
              HelplinePage(),
              SizedBox(height: 10),
            ],
          )
        ],
      ),
    );
  }
}
