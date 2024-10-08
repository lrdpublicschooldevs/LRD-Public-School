import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/HomeWork/widgets/HomeWorkBox.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class HomeWorkPage extends StatelessWidget {
  const HomeWorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Home Work",
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
=======
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
>>>>>>> ansh
          ),
          ListView(children: [
            HomeWorkBox(
              labelColor: Colors.yellow,
              labelName: "Mathematics",
              subjectName: "Surface Area",
              assignDate: "27 May 2024",
              submitDate: "05 June 2024",
              primBtn: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryBtn(
                    btnName: "Details",
                    ontap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            HomeWorkBox(
              labelColor: Colors.yellow,
              labelName: "Mathematics",
              subjectName: "Surface Area",
              assignDate: "27 May 2024",
              submitDate: "05 June 2024",
              primBtn: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryBtn(
                    btnName: "Details",
                    ontap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            HomeWorkBox(
              labelColor: Colors.yellow,
              labelName: "Mathematics",
              subjectName: "Surface Area",
              assignDate: "27 May 2024",
              submitDate: "05 June 2024",
              primBtn: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryBtn(
                    btnName: "Details",
                    ontap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            HomeWorkBox(
              labelColor: Colors.yellow,
              labelName: "Mathematics",
              subjectName: "Surface Area",
              assignDate: "27 May 2024",
              submitDate: "05 June 2024",
              primBtn: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryBtn(
                    btnName: "Details",
                    ontap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ])
        ],
      ),
    );
  }
}
