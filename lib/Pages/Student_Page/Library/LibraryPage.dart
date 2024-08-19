import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_Page/Library/BookDetailPage.dart';
import 'package:myapp/Pages/Student_Page/Library/widgets/AllBookDetails.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Library",
          style: Theme.of(context).textTheme.headlineSmall,
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  children: [
                    CradLebel(context, () {}, "All Book"),
                    const SizedBox(width: 10),
                    CradLebel(context, () {}, "Issue Book"),
                    const SizedBox(width: 10),
                    CradLebel(context, () {}, "Return Book")
                  ],
                ),
              ),
              // body part
              AllBookDetail(
                bookName: "Book Name",
                onTap: () {
                  Get.to(const BookDetailsPage());
                },
                dateOfIssue: "27 July 2024, Thursday",
                dateOfReturn: "05 June 2024, Friday",
              ),
              const SizedBox(height: 10),
              AllBookDetail(
                bookName: "Book Name",
                onTap: () {
                  Get.to(const BookDetailsPage());
                },
                dateOfIssue: "27 July 2024, Thursday",
                dateOfReturn: "05 June 2024, Friday",
              ),
              const SizedBox(height: 10),
              AllBookDetail(
                bookName: "Book Name",
                onTap: () {
                  Get.to(const BookDetailsPage());
                },
                dateOfIssue: "27 July 2024, Thursday",
                dateOfReturn: "05 June 2024, Friday",
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget CradLebel(BuildContext context, VoidCallback ontap, String labelName) {
  return Expanded(
    child: InkWell(
      onTap: ontap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(250, 225, 225, 0.6),
            border: Border.all(
              width: 0.5,
              color: Colors.black,
            )),
        child: Center(
          child: Text(
            labelName,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ),
    ),
  );
}
