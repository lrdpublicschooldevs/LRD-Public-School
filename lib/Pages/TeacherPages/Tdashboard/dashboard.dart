import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/colors.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/TeacherPages/widgets/DashboardBody.dart';
import 'package:myapp/Pages/TeacherPages/widgets/DashboardHeader.dart';

class TDashboardPage extends StatefulWidget {
  const TDashboardPage({super.key});

  @override
  State<TDashboardPage> createState() => _TDashboardPageState();
}

class _TDashboardPageState extends State<TDashboardPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SvgPicture.asset(
              AssetsIamge.bgDesignSVG,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            ListView(
              children: const [
                SizedBox(height: 10),
                TDashboardHeader(),
                SizedBox(height: 20),
                TDashboardBody(),
                SizedBox(height: 30)
              ],
            ),
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg', height: 24, width: 24),
            label: 'Homework',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/contact_us.svg', height: 24, width: 24),
            label: 'Contact us',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/notification.svg', height: 24, width: 24),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/setting.svg', height: 24, width: 24),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: dOnBackgroundColor,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        onTap: _onItemTapped,
      ),
    );
  }
}
