import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Widgets/dateTimePick.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class TeacherLeavePage extends StatelessWidget {
  const TeacherLeavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Teacher Leave",
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
            AssetsImage.bgDesignSVG,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(250, 225, 225, 0.6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text("Leave Date", style: Theme.of(context).textTheme.bodyLarge),
                    const DateTimePick(),
                    const SizedBox(height: 15),
                    Text("Application Title", style: Theme.of(context).textTheme.bodyLarge),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your tile",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text("Description", style: Theme.of(context).textTheme.bodyLarge),
                    TextField(
                      maxLines: 3,
                      decoration: const InputDecoration(
                        hintText: "Enter detailed description",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                      keyboardType: TextInputType.multiline,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(500)
                      ],
                    ),
                    const SizedBox(height: 100),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      PrimaryBtn(
                        btnName: "Approve",
                        ontap: () {},
                      ),
                    ]),
                    const SizedBox(height: 5),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
