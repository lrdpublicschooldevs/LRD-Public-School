import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Pages/otpscreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 1)), // Simulate a loading time of 3 seconds
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting, show the splash screen
          return Scaffold(
            body: Stack(
              children: [
                // Background SVG
                SvgPicture.asset(
                  'lib/assets/splashBg.svg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                // Logo PNG
                Center(
                  child: Image.asset(
                    'lib/assets/logo  lrd.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          );
        } else {
          // Once loading is complete, switch to the WelcomePage
          // return const WelcomePage();
          return const OtpScreen();//OtpScreen
        }
      },
    );
  }
}