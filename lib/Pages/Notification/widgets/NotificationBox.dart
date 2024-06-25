import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';

class NotificationBox extends StatelessWidget {
  final Color labelColor;
  final String labelName;
  final String date;
  final String time;
  final String message;
  const NotificationBox({
    super.key,
    required this.labelColor,
    required this.labelName,
    required this.date,
    required this.time,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(250, 225, 225, 0.6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: labelColor,
            child: Text(
              labelName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              SvgPicture.asset(
                AssetsIamge.dNotificationSVG,
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.watch_later_outlined,
                          size: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          date,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          time,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      message,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
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
