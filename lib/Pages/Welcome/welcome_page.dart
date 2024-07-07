import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Auth/loginPage.dart';
import 'package:myapp/Pages/Teacher_Page/Tdashboard/dashboard.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background SVG
          SvgPicture.asset(
            AssetsIamge.splashBgSVG,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Logo PNG
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Image.asset(
              AssetsIamge.logoImg,
              width: 150,
              height: 150,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to', // Add text between the buttons
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LRD Public School', // Add text between the buttons
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryBtn(
                      btnName: 'Student/Parent Login',
                      ontap: () {
                        Get.to(() => LoginPage());
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Add spacing between the text and buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryBtn(
                      btnName: "Teacher Login",
                      ontap: () {
                        Get.to(const TDashboardPage());
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
