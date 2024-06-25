import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Notifications",
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
            AssetsIamge.bgDesignSVG,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(250, 225, 225, 0.6),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
