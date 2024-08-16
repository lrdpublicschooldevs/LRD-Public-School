import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/official_Detail/widgets/StudentDetail.dart';
import 'package:myapp/Pages/Student_Page/official_Detail/widgets/ParentDetails.dart';

class OfficialDetailPage extends StatelessWidget {
  const OfficialDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Official Detail's",
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
              OfficialStudentDetail(),
              SizedBox(height: 10),
              OfficialParentDetail()
            ],
          )
        ],
      ),
    );
  }
}
