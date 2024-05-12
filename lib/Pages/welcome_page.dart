import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_page.dart'; // Import your LoginPage file

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background SVG
            SvgPicture.asset(
              'lib/assets/splashBg.svg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            // Logo PNG
            Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Image.asset(
                'lib/assets/logo  lrd.png',
                width: 170,
                height: 170,
                fit: BoxFit.contain,
              ),
            ),
            // Buttons
            Positioned(
              left: 0,
              right: 0,
              top: 350,
              child: Column(
                children: [
                  Text(
                    'Welcome to', // Add text between the buttons
                    style: Theme.of(context).textTheme.displayMedium!,
                  ),
                  Text(
                    'LRD Public School', // Add text between the buttons
                    style: Theme.of(context).textTheme.displayLarge!,
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height <= 800 ? 45 : 70,
                  ),


                  SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()), // Navigate to LoginPage
                        );
                      },
                      child: Text(
                        'Student/Parent Login',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color(0xFFA62E2E)),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Add spacing between the text and buttons
                  SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()), // Navigate to LoginPage
                        );
                      },
                      child: Text(
                        'Teacher Login',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).elevatedButtonTheme.style!.backgroundColor!.resolve({})!),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
