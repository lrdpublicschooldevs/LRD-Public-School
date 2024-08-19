import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Auth/loginPage.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

import '../tauth/tLoginPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width
    double screenWidth = MediaQuery.of(context).size.width;

    double headlineFontSize = screenWidth > 420 ? 24 : screenWidth * 0.06; // Fixed size of 24 for wide screens
    double bodyFontSize = screenWidth > 420 ? 16 : screenWidth * 0.04; // Fixed size of 16 for wide screens

    return Scaffold(
      body: Stack(
        children: [
          // Background SVG
          SvgPicture.asset(
            AssetsImage.splashBgSVG,
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
              AssetsImage.logoImg,
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
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: headlineFontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LRD Public School', // Add text between the buttons
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: headlineFontSize,
                      ),
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
                        Get.to(() => const LoginPage());
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













