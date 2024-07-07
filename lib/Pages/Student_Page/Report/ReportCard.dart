import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/Report/widgets/reportCardBox.dart';

class ReportCardPage extends StatelessWidget {
  const ReportCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Report Card",
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
            AssetsIamge.bgDesignSVG,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              Image.asset(
                AssetsIamge.logoImg,
                width: 150,
                height: 150,
                // fit: BoxFit.contain,
              ),
              Text(
                "LRD Public School",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                "Afflicted to CBSE Board",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const ReportCardBox()
            ],
          )
        ],
      ),
    );
  }
}
