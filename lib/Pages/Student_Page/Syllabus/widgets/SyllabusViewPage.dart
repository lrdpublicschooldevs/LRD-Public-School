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

    final List<Map<String, String>> syllabusData = [
      {"lesson": "Lesson 1", "title": "The Fish Tale"},
      {"lesson": "Lesson 2", "title": "Be My Multiple, I’ll Be Your Factor"},
      {"lesson": "Lesson 3", "title": "Journey to the Moon"},
      {"lesson": "Lesson 4", "title": "Mystery of the Lost Treasure"},
      {"lesson": "Lesson 5", "title": "Exploring the Solar System"},
      {"lesson": "Lesson 6", "title": "The Great Pyramid"},
      {"lesson": "Lesson 7", "title": "Secrets of the Rainforest"},
      {"lesson": "Lesson 8", "title": "Inventions That Changed the World"},
      {"lesson": "Lesson 9", "title": "The Magic of Mathematics"},
      {"lesson": "Lesson 10", "title": "Adventures in Ancient Rome"},
      {"lesson": "Lesson 11", "title": "The World of Dinosaurs"},
      {"lesson": "Lesson 12", "title": "The Rise of Computers"},
      {"lesson": "Lesson 13", "title": "Wonders of the Ocean"},
      {"lesson": "Lesson 14", "title": "The Art of Storytelling"},
      {"lesson": "Lesson 15", "title": "Discovering the Human Body"},
      {"lesson": "Lesson 16", "title": "The Future of Transportation"},
      {"lesson": "Lesson 17", "title": "The Power of Electricity"},
      {"lesson": "Lesson 18", "title": "The History of Flight"},
      {"lesson": "Lesson 19", "title": "The Life of Albert Einstein"},
      // Add more lessons as needed
    ];

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
            AssetsImage.bgDesignSVG,
<<<<<<< HEAD
            fit: BoxFit.fill,
            width: double.maxFinite,
            height: double.maxFinite,
=======
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
>>>>>>> ansh
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: isDesktop
                    ? 600
                    : isTablet
                    ? 500
                    : double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(30),
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
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: syllabusData.map((lesson) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    lesson["lesson"]!,
                                    style: Theme.of(context).textTheme.titleLarge,
                                  ),
                                  SizedBox(width: 50),
                                  Expanded(
                                    child: Text(
                                      lesson["title"]!,
                                      style: Theme.of(context).textTheme.labelMedium,

                                    ),
                                  ),
                                  SizedBox(height: 20,)
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: PrimaryBtn(
                        btnName: "Download",
                        ontap: () {},
                      ),
                    ),
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
