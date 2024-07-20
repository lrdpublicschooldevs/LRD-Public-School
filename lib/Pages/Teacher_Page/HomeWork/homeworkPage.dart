import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Widgets/customDropDown.dart';
import 'package:myapp/Widgets/dateTimePick.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class THomeWorkPage extends StatelessWidget {
  const THomeWorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Home Work",
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
                    Text("Select Subject", style: Theme.of(context).textTheme.bodyLarge),
                    const CustomDropdown(items: [
                      {
                        'value': 'English',
                        'label': 'English'
                      },
                      {
                        'value': 'Computer',
                        'label': 'Computer'
                      },
                      {
                        'value': 'Mathematics',
                        'label': 'Mathematics'
                      },
                      {
                        'value': 'English',
                        'label': 'English'
                      },
                    ], hint: "Choose Subject"),
                    const SizedBox(height: 15),
                    Text("Topic", style: Theme.of(context).textTheme.bodyLarge),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your topic name",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text("Submission Date", style: Theme.of(context).textTheme.bodyLarge),
                    const DateTimePick(),
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
                    const SizedBox(height: 15),
                    Text("Image", style: Theme.of(context).textTheme.bodyLarge),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Upload Image",
                        border: UnderlineInputBorder(),
                        suffixIcon: Icon(Icons.image_outlined),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      PrimaryBtn(
                        btnName: "Add Home Work",
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
