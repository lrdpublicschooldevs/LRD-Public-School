import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/Config/images.dart';
import 'reset_password.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
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
            top: MediaQuery.of(context).size.height * 0.32, // Adjust this value as needed
            left: 20,
            right: 20,
            child: Container(
              height: 463,
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
                      Center(
                        child: Text(
                          'OTP Verification',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Enter the 4 digit OTP',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: SizedBox(
                          width: 180,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your login logic here
                            },
                            child: Text(
                              'Verify',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFA62E2E)),
                            ),
                          ),
                        ),
                      ),
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
