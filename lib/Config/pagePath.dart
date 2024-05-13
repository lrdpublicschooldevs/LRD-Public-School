import 'package:get/get.dart';
import 'package:myapp/Pages/loginPage.dart';
import 'package:myapp/Pages/welcome_page.dart';

// import 'package:hello/Pages/UserProfile/UserProfilePage.dart';
// import 'package:hello/Pages/UserProfile/Widgets/UpdateProfile.dart';

var pagePath = [
  GetPage(
    name: "/welcomePage",
    page: () => WelcomePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/loginPage",
    page: () => LoginPage(),
    transition: Transition.rightToLeft,
  ),
  // GetPage(
  //   name: "/chatpage",
  //   page: () => ChatPage(),
  //   transition: Transition.rightToLeft,
  // ),
  // GetPage(
  //   name: "/profilepage",
  //   page: () => UserProfilePage(),
  //   transition: Transition.rightToLeft,
  // ),
  // GetPage(
  //   name: "/updateprofile",
  //   page: () => UserUpdateProfile(),
  //   transition: Transition.rightToLeft,
  // )
 
];
