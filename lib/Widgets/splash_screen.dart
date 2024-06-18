import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/welcome_page.dart';

import '../Pages/Auth/loginPage.dart';
import '../Pages/Student_profile/test.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3)), // Simulate a loading time of 3 seconds
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting, show the splash screen
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
                Center(
                  child: Image.asset(
                    AssetsIamge.logoImg,
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          );
        } else {
          // Once loading is complete, switch to the WelcomePage
          // return const WelcomePage();
          return const LoginPage(); //OtpScreen
        }
      },
    );
  }
}
