import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:myapp/Config/images.dart';
import 'package:myapp/Pages/Student_profile/DashBoard/dashboard.dart';
import 'package:myapp/Widgets/primaryBtn.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _focusNodes =
      List.generate(6, (_) => FocusNode()); // List of focus nodes
  final _otpController = TextEditingController(); // To store the complete OTP

  List<String> _otp =
      List.generate(6, (_) => ''); // Initialize empty list for OTP digits

  @override
  void initState() {
    super.initState();
    _focusNodes[0].requestFocus(); // Initially focus on the first field
  }

  @override
  void dispose() {
    _focusNodes.forEach((node) => node.dispose()); // Dispose of all focus nodes
    super.dispose();
  }

  void _handleFocusChange(int index) {
    if (_otp[index].isNotEmpty && index < _otp.length - 1) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (_otpController.text.length == 6) {
      // Handle OTP verification logic when all digits are entered
      print('OTP: ${_otpController.text}'); // Example usage
    }
  }

  Widget _buildOtpField(int index) {
    return SizedBox(
      width: 40,
      height: 50,
      child: TextField(
        focusNode: _focusNodes[index],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: const InputDecoration(
          fillColor: Colors.white, // White background
          filled: true, // Ensure background fills the entire field
          border:
              OutlineInputBorder(borderSide: BorderSide.none), // Remove border
          counterText: '', // Hide counter text
          contentPadding: EdgeInsets.symmetric(vertical: 2.0), // Adjust padding
        ),
        onChanged: (value) {
          setState(() {
            _otp[index] = value;
            _otpController.text = _otp.join(''); // Update combined OTP string
            _handleFocusChange(index);
          });
        },
        style: TextStyle(
          fontSize: 16.0, // Adjust font size
          color: Colors.black, // Black text color
          fontWeight: FontWeight.w600, // Semi-bold font weight
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              AssetsIamge.bgDesignSVG,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.1, // Adjust this value as needed
            left: 20,
            right: 20,
            child: Image.asset(
              AssetsIamge.otpImg,
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          // Login Card
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.37, // Adjust this value as needed
            left: 20,
            right: 20,
            child: Container(
              height: 400,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Color.fromRGBO(
                    255, 255, 255, 0.8), // Semi-transparent white color
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text(
                          'OTP Verification',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Center(
                        child: Text(
                          'Enter the 6-digit code',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              for (int i = 0; i < 6; i++) _buildOtpField(i),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't receive OTP?",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Click here to resend OTP",
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PrimaryBtn(
                              btnName: "Submit",
                              ontap: () {
                                Get.to(DashboardPage());
                              },
                            ),
                          ],
                        ),
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
