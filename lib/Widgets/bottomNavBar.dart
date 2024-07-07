import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/dashboard.dart';
import 'package:myapp/Pages/Student_Page/Leave/LeaveForm.dart';
import 'package:myapp/Pages/Student_Page/Notification/NotificationPage.dart';
import 'package:myapp/Pages/Student_Page/official_Detail/OfficialDetail.dart';
import 'package:navigation_view/item_navigation_view.dart';
import 'package:navigation_view/navigation_view.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt currentIndex = 0.obs;
    List screen = [
      LeaveForm(),
      const OfficialDetailPage(),
      const NotificationPage1(),
      const DashboardPage(),
    ];
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      bottomNavigationBar: NavigationView(
        onChangePage: (index) {
          currentIndex.value = index;
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        
        color: Colors.white,
        curve: Curves.easeInBack,
        durationAnimation: Duration(milliseconds: 200),
        items: [
          ItemNavigationView(
            childAfter: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            childBefore: const Icon(
              Icons.settings_outlined,
              color: Colors.white,
            ),
          ),
          ItemNavigationView(
            childAfter: const Icon(
              Icons.contact_mail,
              color: Colors.white,
            ),
            childBefore: const Icon(
              Icons.contact_mail_outlined,
              color: Colors.white,
            ),
          ),
          ItemNavigationView(
            childAfter: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            childBefore: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
          ),
          ItemNavigationView(
            childAfter: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            childBefore: const Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      extendBody: true,
      body: Obx(() => screen[currentIndex.value]),
    );
  }
}
