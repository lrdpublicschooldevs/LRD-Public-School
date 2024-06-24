import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeWork extends StatefulWidget {
  @override
  _LeaveFormState createState() => _LeaveFormState();
}

class _LeaveFormState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                'assets/icons/bgDesignLayer.svg', // Ensure this path is correct
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                AppBar(
                  title: Center(child: Text('Home Work')),
                  backgroundColor: Colors.transparent,
                  elevation: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: 3, // Replace with your actual item count
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white.withOpacity(0.8), // 20% transparent
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 4,
                                            offset: Offset(2, 2),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(Icons.verified, color: Colors.white),
                                          SizedBox(width: 5),
                                          Text('Mathematics', style: TextStyle(color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Surface Areas and Volumes",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Assign Date",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "27 March 2024",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Last Submission Date",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "10 April 2024",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                const SizedBox(height: 10),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Handle Details button logic here
                                    },
                                    child: Text('Details',style: TextStyle(color: Colors.white),),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red.shade900,
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                                      textStyle: TextStyle(fontSize: 18, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

