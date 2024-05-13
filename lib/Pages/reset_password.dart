import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
              'assets/bgDesignLayer.svg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0, // Adjust this value as needed
            left: 20,
            right: 20,
            child: Image.asset(
              'assets/forgot.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          // Login Card
          Positioned(
            top: MediaQuery.of(context).size.height * 0.28, // Adjust this value as needed
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
                          'Reset Password',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'New Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter New password',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(16),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Confirm Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Re-enter new password',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(16),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: SizedBox(
                          width: 180,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your login logic here
                            },
                            child: Text(
                              'Update',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFA62E2E)),
                            ),
                          ),
                        ),
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
