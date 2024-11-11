import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:test_1/AccountscreatedScreen.dart';
import 'package:test_1/HomeScreen.dart';


class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF03232),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      'assets/images/back.png', // Path to back button image
                      height: 24,
                      width: 24,
                    ),
                    onPressed: () {
                     // Navigate back to the previous screen
                          if (Navigator.canPop(context)) {
    Navigator.pop(context);
  } else {
    // You could navigate to a default screen here if there's no previous screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()), // Example
    );
  }
   
                      // Handle back button press
                    },
                  ),
                  SizedBox(width: 8),
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
            ),
            Spacer(),
            Center(
              child: Image.asset('assets/images/carguylogo.png',
                  height: 150), // Update the path to your logo
            ),
            //White Field
            Spacer(),
            Container(
              width: 450, // Set the width to 360px
              height: 393, // Set the height to 393px
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(5.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    'OTP Verification',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Enter a OTP sent to a +91 ****2064',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildOTPField(context, '2'),
                      _buildOTPField(context, '3'),
                      _buildOTPField(context, ''),
                      _buildOTPField(context, ''),
                    ],
                  ),
                  SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: "Don't receive code? ",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF000000),
                          ),
                          children: [
                            TextSpan(
                              text: 'Resend',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFF03232),
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFFF03232),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Handle resend code
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AccountCreatedScreen()),
    );
                      // Handle verify button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF03232),
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 17),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Text(
                      'Verify',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOTPField(BuildContext context, String initialValue) {
    return Container(
      width: 57,
      height: 57,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFF03232),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30), // Circular border radius
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Text(
            initialValue,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          Positioned(
            bottom: 14,
            child: Container(
              width: 20,
              height: 2,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
