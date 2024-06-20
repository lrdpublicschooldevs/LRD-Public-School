import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:expandable/expandable.dart';



class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                'assets/icons/bgDesignLayer.svg', // Ensure this path is correct
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                AppBar(
                  leading: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/back.svg',
                      height: 24,
                      width: 24,
                    ),
                    onPressed: () {
                      // Handle back action
                    },
                  ),
                  title: Center(child: const Text('Notifications')),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(10),
                    children: List.generate(
                      10,
                          (index) => NotificationCard(
                        notificationType: 'Attendance',
                        message:
                        'This is a notification message which can be very long and needs to be expandable to show the complete text.',
                        iconPath: 'assets/icons/notification.svg',
                        time: '10:00 AM',
                        date: '2023-06-20',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomMenu(),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String notificationType;
  final String message;
  final String iconPath;
  final String time;
  final String date;

  NotificationCard({
    required this.notificationType,
    required this.message,
    required this.iconPath,
    required this.time,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ExpandablePanel(
        theme: const ExpandableThemeData(
          tapBodyToExpand: true,
          tapBodyToCollapse: true,
          hasIcon: false,
        ),
        collapsed: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.red.shade500,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  notificationType,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(
                    iconPath,
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(time),
                        Text(date),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                message,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        expanded: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  notificationType,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(
                    iconPath,
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(time),
                        Text(date),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(message),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomMenuItem(
            iconPath: 'assets/icons/home.svg',
            label: 'Home',
            onTap: () {
              // Handle Home tap
            },
          ),
          BottomMenuItem(
            iconPath: 'assets/icons/contact_us.svg',
            label: 'Contact us',
            onTap: () {
              // Handle Notifications tap
            },
          ),
          BottomMenuItem(
            iconPath: 'assets/icons/bell.svg',
            label: 'Notification',
            onTap: () {
              // Handle Settings tap
            },
          ),
          BottomMenuItem(
            iconPath: 'assets/icons/setting.svg',
            label: 'Setting',
            onTap: () {
              // Handle Profile tap
            },
          ),
        ],
      ),
    );
  }
}

class BottomMenuItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onTap;

  BottomMenuItem({
    required this.iconPath,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 24,
            height: 24,
          ),
          const SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}
