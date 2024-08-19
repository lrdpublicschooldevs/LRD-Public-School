import 'package:flutter/material.dart';
import 'package:myapp/Pages/Student_Page/DashBoard/dashboard.dart';
import 'package:myapp/Pages/Student_Page/HomeWork/HomeWorkPage.dart';
import 'package:myapp/Pages/Student_Page/Library/LibraryPage.dart';
import 'package:myapp/Pages/Student_Page/Notification/NotificationPage.dart';

class StudentBottomNav extends StatefulWidget {
  const StudentBottomNav({super.key});

  @override
  State<StudentBottomNav> createState() => _StudentBottomNavState();
}

class _StudentBottomNavState extends State<StudentBottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late DashboardPage dashboardPage;
  late NotificationPage1 notificationPage;
  late HomeWorkPage homeWorkPage;
  late LibraryPage libraryPage;

  @override
  void initState() {
    dashboardPage = const DashboardPage();
    notificationPage = const NotificationPage1();
    homeWorkPage = const HomeWorkPage();
    libraryPage = const LibraryPage();
    pages = [
      dashboardPage,
      notificationPage,
      homeWorkPage,
      libraryPage
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: "HomeWork",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            label: "Library",
          ),
        ],
        currentIndex: currentTabIndex,
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed, // Ensure this is set
      ),
      body: pages[currentTabIndex],
    );
  }
}