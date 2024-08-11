import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Auth/loginPage.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/dashboard.dart';
import 'package:myapp/Pages/tauth/tLoginPage.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            AssetsImage.splashBgSVG,
            fit: BoxFit.fill,
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.13,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(
              AssetsImage.logoImg,
              width: 150,
              height: 150,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LRD Public School',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryBtn(
                      btnName: 'Student/Parent Login',
                      ontap: () {
                        Get.to(() => const LoginPage());
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryBtn(
                      btnName: "Teacher Login",
                      ontap: () {
                        Get.to(const TeacherLoginPage());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
