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
                style: Theme.of(context).textTheme.bodyLarge,

              ),
              Text(
                "Mathematics",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [Colors.red.shade100, Colors.white],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    "  2024 - 25  ",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
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
                  height: 70,
                  width: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      AssetsIamge.proflePicImg,
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
