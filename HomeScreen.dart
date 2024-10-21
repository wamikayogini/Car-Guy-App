import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFF03232),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Image.asset(
                          'assets/images/back.png', // Path to back button image
                          height: 24,
                          width: 24,
                        ),
                        onPressed: () {},
                      ),
                      // Removed SizedBox
                      Text(
                        'Back',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/carguylogo.png', // Logo path
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
            // White Field Container
             Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(screenWidth *
                      0.13), // Adjust the factor to get desired curvature
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(screenWidth *
                      0.01), // Adjust the factor to get desired curvature
                  bottomRight: Radius.circular(2),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 40),
                  CustomTextField(
                    hint: 'Enter Your Full Name',
                    label: 'Full Name',
                    icon: 'assets/images/user.png', // User icon path
                  ),
                  SizedBox(height: 25),
                  CustomTextField(
                    hint: 'Enter Your Mobile No.',
                    label: 'Mobile No.',
                    icon: 'assets/images/phonecall.png', // Phone icon path
                  ),
                  SizedBox(height: 25),
                  CustomTextField(
                    hint: 'Enter Your Email Id',
                    label: 'Email Id',
                    icon: 'assets/images/mail.png', // Mail icon path
                  ),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 2.0,
                            right:
                                1.0), // Added right padding to create some space between checkbox and text
                        child: Checkbox(
                          value: true,
                          onChanged: (value) {},
                          activeColor: Color(0xFFF03232),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            'I have read and I accept the Terms and Conditions that underlines the use of The Car Guys services.',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF03232),
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      // Handle login navigation
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have any account? ',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 17,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              color: Color(0xFFF03232),
                              fontSize: 17,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
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

class CustomTextField extends StatelessWidget {
  final String hint;
  final String label;
  final String icon;

  CustomTextField(
      {required this.hint, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: double.infinity,
            child: TextField(
              style: TextStyle(fontFamily: 'Poppins'),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(fontFamily: 'Poppins'),
                contentPadding: EdgeInsets.only(left: 10).add(
                    EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0)), // Combined padding

                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    icon,
                    width: 20,
                    height: 20,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Color(0xFFF03232)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Color(0xFFF03232)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Color(0xFFF03232)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
