import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart'; // For SVG background (replace with your package if needed)

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
    } else if (_otp[index].isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
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
          // Remove border
          counterText: '', // Hide counter text
          contentPadding:
          EdgeInsets.symmetric(vertical: 12.0), // Adjust padding
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
      backgroundColor:
      Color.fromRGBO(219, 223, 227, 1.0), // Light gray background
      appBar: AppBar(
        title: Text(
          'OTP Verification',
          style: TextStyle(
            fontSize: 18.0, // Adjust font size
            color: Colors.white, // Black text color
            fontWeight: FontWeight.w600, // Semi-bold font weight
          ),
        ),
        backgroundColor: Colors.red.shade900, // White app bar background
      ),
      body: SingleChildScrollView(
        // Allow content to scroll if needed
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0), // Padding around content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0), // Spacing between app bar and content
            Text(
              'Enter the 6-digit code sent to your phone number',
              style: TextStyle(
                fontSize: 16.0, // Adjust font size
                color: Colors.black, // Black text color
                fontWeight: FontWeight.w400, // Regular font weight
              ),
            ),
            SizedBox(height: 20.0), // Spacing between text and OTP fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 0; i < 6; i++) _buildOtpField(i),
              ],
            ),
            SizedBox(height: 40.0), // Spacing between OTP fields and button
            Center(
              child: SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your OTP verification logic here
                    if (_otpController.text.length == 6) {
                      // Perform OTP verification (e.g., call an API)
                      print('Verifying OTP: ${_otpController.text}');
                    } else {
                      // Show an error message if not all digits are entered
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please enter all 6 digits of the OTP'),
                        ),
                      );
                    }
                  },
                  child: Text(
                    'Verify',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFA62E2E)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
