import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/Student_profile/StudentProfile.dart';

class TDashboardHeader extends StatelessWidget {
  const TDashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Teacher",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                "Mathematics",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Card(
                child: Text(
                  "  2024 - 25  ",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => StudentProfilePage());
                },
                child: Container(
                  height: 90,
                  width: 90,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      AssetsImage.proflePicImg,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
