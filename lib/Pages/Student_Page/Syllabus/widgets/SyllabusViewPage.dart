import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class SyllabusViewPage extends StatelessWidget {
  const SyllabusViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final bool isDesktop = currentWidth > 1000;
    final bool isTablet = currentWidth > 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "View Syllabus",
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
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: isDesktop
                    ? 600
                    : isTablet
                        ? 600
                        : double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(250, 225, 225, 0.6),
                ),
                child: Column(
                  children: [
                    Text(
                      "5Th",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      "Mathemetics",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Divider(
                      height: 3,
                      color: Colors.black,
                    ),
                    Expanded(child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [

                              Text("Lesson 1",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("The fish tale",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Lesson 2",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("Be my Multiple, I’ll be your Factor",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),                          Row(
                            children: [
                              Text("Lesson 1",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("The fish tale",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Lesson 2",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("Be my Multiple, I’ll be your Factor",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),                          Row(
                            children: [
                              Text("Lesson 1",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("The fish tale",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Lesson 2",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("Be my Multiple, I’ll be your Factor",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),                          Row(
                            children: [
                              Text("Lesson 1",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("The fish tale",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Lesson 2",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("Be my Multiple, I’ll be your Factor",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),                          Row(
                            children: [
                              Text("Lesson 1",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("The fish tale",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Lesson 2",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("Be my Multiple, I’ll be your Factor",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),                          Row(
                            children: [
                              Text("Lesson 1",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("The fish tale",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Lesson 2",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("Be my Multiple, I’ll be your Factor",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),                          Row(
                            children: [
                              Text("Lesson 1",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("The fish tale",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Lesson 2",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("Be my Multiple, I’ll be your Factor",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),                          Row(
                            children: [
                              Text("Lesson 1",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("The fish tale",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Lesson 2",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("Be my Multiple, I’ll be your Factor",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),                          Row(
                            children: [
                              Text("Lesson 1",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("The fish tale",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Lesson 2",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("Be my Multiple, I’ll be your Factor",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),                          Row(
                            children: [
                              Text("Lesson 1",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("The fish tale",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Lesson 2",style: Theme.of(context).textTheme.titleLarge,),
                              SizedBox(width: 50,),
                              Expanded(child: Text("Be my Multiple, I’ll be your Factor",style: Theme.of(context).textTheme.labelMedium,))
                            ],
                          ),
                          SizedBox(height: 10,),
                        ],
                      )
                    )),
                    Align(
                      alignment: Alignment.bottomCenter,
                        child: PrimaryBtn(btnName: "Download", ontap: () {})),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
