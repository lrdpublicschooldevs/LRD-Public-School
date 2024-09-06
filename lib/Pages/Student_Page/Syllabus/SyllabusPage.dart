import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/Syllabus/widgets/syllabusBox.dart';

class SyllabusPage extends StatelessWidget {
  const SyllabusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Syllabus",
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
<<<<<<< HEAD
            fit: BoxFit.fill,
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return _buildDesktopLayout();
              } else if (constraints.maxWidth > 400) {
                return _buildTabletLayout();
              } else {
                return _buildMobileLayout();
              }
            },
=======
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
>>>>>>> ansh
          ),
        ],
      ),
    );
  }

  Widget _buildMobileLayout() {
    return ListView(
      children: const [
        SyllabusBox(),
      ],
    );
  }

  Widget _buildTabletLayout() {
    return Center(
      child: Container(
        width: 500, // Adjust the width for tablet
        child: ListView(
          children: const [
            SyllabusBox(),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Center(
      child: Container(
        width: 600, // Adjust the width for desktop
        child: ListView(
          children: const [
            SyllabusBox(),
          ],
        ),
      ),
    );
  }
}
