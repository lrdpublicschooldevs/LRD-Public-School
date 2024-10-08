import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Wecome/WelcomePage.dart';

class SplashScren extends StatelessWidget {
  const SplashScren({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Stack(
              children: [
                SvgPicture.asset(
                  AssetsImage.splashBgSVG,
<<<<<<< HEAD:lib/Widgets/splashScreen.dart
                  fit: BoxFit.fill,
                  width: double.maxFinite,
                  height: double.maxFinite,
=======
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
>>>>>>> ansh:lib/Widgets/splash_screen.dart
                ),
                Center(
                  child: Image.asset(
                    AssetsImage.logoImg,
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          );
        } else {
          return const WelcomePage();
        }
      },
    );
  }
}
