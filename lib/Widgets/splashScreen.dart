import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Views/LayoutView.dart';

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
                  fit: BoxFit.fill,
                  width: double.maxFinite,
                  height: double.maxFinite,
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
          return const LayoutView();
        }
      },
    );
  }
}
