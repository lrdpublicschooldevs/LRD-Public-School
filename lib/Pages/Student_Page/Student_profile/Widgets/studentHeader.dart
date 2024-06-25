import 'package:flutter/material.dart';
import 'package:myapp/Config/images.dart';

class StudentHeader extends StatelessWidget {
  const StudentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        padding: const EdgeInsets.all(10),
        // height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(250, 225, 225, 0.6),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        AssetsIamge.proflePicImg,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Student Name",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        Text(
                          " Class : 3rd",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(" | "),
                        Text(
                          "Sec : C ",
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],
                    )
                  ],
                ),
                const Icon(
                  Icons.camera_alt_outlined,
                  size: 40,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
