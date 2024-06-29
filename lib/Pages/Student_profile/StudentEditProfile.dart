import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class StudentEditProfile extends StatelessWidget {
  const StudentEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Student Edit Profile",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          leading: InkWell(
            onTap: () {},
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(250, 225, 225, 0.6),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(top: 20),
                                height: 150,
                                width: 160,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    AssetsIamge.proflePicImg,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: -10,
                                right: -10,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.edit),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Student Email : ",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                SizedBox(
                                  height: 30,
                                  child: TextField(
                                    enabled: true,
                                    decoration: InputDecoration(
                                      filled: true,
                                      hintText: "",
                                      fillColor: Colors.transparent,
                                      border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "Student Email : ",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                SizedBox(
                                  height: 30,
                                  child: TextField(
                                    enabled: true,
                                    decoration: InputDecoration(
                                      filled: true,
                                      hintText: "",
                                      fillColor: Colors.transparent,
                                      border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "Contact Number : ",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                SizedBox(
                                  height: 30,
                                  child: TextField(
                                    enabled: true,
                                    decoration: InputDecoration(
                                      filled: true,
                                      hintText: "",
                                      fillColor: Colors.transparent,
                                      border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PrimaryBtn(btnName: "Update", ontap: () {},wd: null,)
                            ],
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
