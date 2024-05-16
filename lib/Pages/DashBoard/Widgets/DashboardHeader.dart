import 'package:flutter/material.dart';
import 'package:myapp/Config/images.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

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
                "Hi Student",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                "Class : 3rd | Sec : A",
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
              Container(
                height: 90,
                width: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    AssetsIamge.proflePicImg,
                    fit: BoxFit.contain,
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
