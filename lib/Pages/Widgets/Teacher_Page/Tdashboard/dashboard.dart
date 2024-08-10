import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Widgets/Teacher_Page/Tdashboard/widgets/DashboardBody.dart';
import 'package:myapp/Pages/Widgets/Teacher_Page/Tdashboard/widgets/DashboardHeader.dart';

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
      appBar: PreferredSize(preferredSize: const Size.fromHeight(0.0), child: Container()),
      body: Stack(
        children: [
          SvgPicture.asset(
            AssetsImage.bgDesignSVG,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          ListView(
            children: const [
              SizedBox(height: 10),
              TDashboardHeader(),
              SizedBox(height: 10),
              TDashboardBody(),
              SizedBox(height: 10)
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
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
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        // mouseCursor: MouseCursor.defer,

        onTap: _onItemTapped,
      ),
    );
  }
}
