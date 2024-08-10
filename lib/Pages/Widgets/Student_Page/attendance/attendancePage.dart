import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Widgets/Student_Page/attendance/widgets/overAll.dart';
import 'package:myapp/Pages/Widgets/Student_Page/attendance/widgets/subjectWise.dart';


class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = true.obs;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Attendance",
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
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 5),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          isLogin.value = true;
                        },
                        child: Container(
                          height: 40,
                          width: isLogin.value ? MediaQuery.sizeOf(context).width / 2.0 : MediaQuery.sizeOf(context).width / 3.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLogin.value ? Theme.of(context).colorScheme.primary : Colors.grey,
                          ),
                          child: Center(
                            child: Text(
                              "Over All",
                              style: isLogin.value
                                  ? Theme.of(context).textTheme.bodyLarge?.copyWith(
                                        color: Colors.white,
                                      )
                                  : Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          isLogin.value = false;
                        },
                        child: Container(
                          height: 40,
                          width: isLogin.value ? MediaQuery.sizeOf(context).width / 3.0 : MediaQuery.sizeOf(context).width / 2.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLogin.value ? Colors.grey : Theme.of(context).colorScheme.primary,
                          ),
                          child: Center(
                            child: Text(
                              "Subject Wise",
                              style: isLogin.value
                                  ? Theme.of(context).textTheme.bodyMedium
                                  : Theme.of(context).textTheme.bodyLarge?.copyWith(
                                        color: Colors.white,
                                      ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => isLogin.value ? const OverAll() : const SubjectWiseBox(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
