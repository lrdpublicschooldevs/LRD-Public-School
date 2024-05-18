import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StudentProfileScreen extends StatefulWidget {
  const StudentProfileScreen({super.key});

  @override
  State<StudentProfileScreen> createState() => _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 40.0),
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  'lib/assets/bgDesignLayer.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min, // Prevent column from expanding
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SvgPicture.asset(
                          'lib/assets/Back-arrow.svg',
                          height: 25,
                          width: 25,
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left:
                            82.0), // Adjust left padding to position the text
                        child: Text(
                          "Student Profile",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _Card1(),
                  SizedBox(
                    height: 20,
                  ),
                  _Card2(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _Card1() {
    return Card(
      elevation: 9, // Add elevation for a shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
                alignment: Alignment.centerLeft,
                'lib/assets/ProfileImg.svg'), // Replace 'assets/icon.svg' with your SVG icon path
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Student Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Class 3rd',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade900,
                      ),
                    ),
                    Text(' | '),
                    Text(
                      'Section \'A\'',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SvgPicture.asset(
                'lib/assets/camera-icon 1.svg'), // Replace 'assets/another_icon.svg' with your SVG icon path
          ],
        ),
      ),
    );
  }

  Widget _Card2() {
    return Card(
      elevation: 9, // Add elevation for a shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'User Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            _buildInfoRow('Academic Year : ', '2024-2025'),
            _buildInfoRow('Date of Birth : ', '07-07-2000'),
            _buildInfoRow('Date of Admission : ', '26-7-2024'),
            _buildInfoRow('Father\'s Name : ', 'Demo Name1'),
            _buildInfoRow('mother\'s Name : ', 'Demo Name2'),
            _buildInfoRow('Student Email : ', 'newstudent123@gmail.com'),
            _buildInfoRow('Contact No. : ', '9760303125'),
            _buildInfoRow('Address : ', 'Balaji vihar,haldwani,Uttarakhand'),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFFA62E2E)),
                ),
                onPressed: () {
                  // Handle button press
                },
                child: Text(
                  'Edit profile',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade900,
          ),
        ),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
