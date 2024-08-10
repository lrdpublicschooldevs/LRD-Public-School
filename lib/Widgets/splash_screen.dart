import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Widgets/Welcome/welcome_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
                  AssetsIamge.splashBgSVG,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
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
          return const WelcomePage();
        }
      },
    );
  }
}
