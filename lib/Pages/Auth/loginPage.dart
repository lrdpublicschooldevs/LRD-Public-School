import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Auth/otpscreen.dart';
import 'package:myapp/Widgets/primaryBtn.dart';
import 'reset_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Add this line to prevent the screen from resizing when the keyboard is opened
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              AssetsIamge.bgDesignSVG,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1, // Adjust this value as needed
            left: 20,
            right: 20,
            child: Image.asset(
              AssetsIamge.lockImg,
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
                          'Sign in to continue',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'ERP id',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter Your ERP Id',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(15),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text('Password', style: Theme.of(context).textTheme.bodyLarge),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
                        child: TextFormField(
                          obscureText: _obscurePassword,
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(16),
                            suffixIcon: IconButton(
                              icon: Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword; // Toggle password visibility
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PrimaryBtn(
                              btnName: "      Login      ",
                              ontap: () {
                                Get.to(() => OtpScreen());
                              }),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(ResetPasswordScreen());
                            },
                            child: Text(
                              "Forget Password?",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          )
                        ],
                      )
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
