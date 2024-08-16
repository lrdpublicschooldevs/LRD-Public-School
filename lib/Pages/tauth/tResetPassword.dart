import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';

import 'package:myapp/Widgets/primaryBtn.dart';

import '../Teacher_Page/Tdashboard/dashboard.dart';

class TeacherResetPasswordScreen extends StatefulWidget {
  const TeacherResetPasswordScreen({super.key});

  @override
  State<TeacherResetPasswordScreen> createState() => _TeacherResetPasswordScreenState();
}

class _TeacherResetPasswordScreenState extends State<TeacherResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>(); // GlobalKey for the form
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Add this line to prevent the screen from resizing when the keyboard is opened
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              AssetsImage.bgDesignSVG,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1, // Adjust this value as needed
            left: 20,
            right: 20,
            child: Image.asset(
              AssetsImage.forgotImg,
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          // Login Card
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35, // Adjust this value as needed
            left: 20,
            right: 20,
            child: Container(
              height: 400,
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Color.fromRGBO(255, 255, 255, 0.8), // Semi-transparent white color
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text(
                          'Reset Password',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'New Password',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter New password',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(15),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Confirm Password',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Re-enter new password',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(15),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PrimaryBtn(
                              btnName: "Upadte",
                              ontap: () {
                                Get.to(TDashboardPage());
                              })
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
