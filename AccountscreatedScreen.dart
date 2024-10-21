import 'package:flutter/material.dart';

class AccountCreatedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCB2D2D), // Dark red background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/back.png', // Replace with your back icon asset
                height: 14,
                width: 14,
              ),
              SizedBox(width: 10),
            ],
          ),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/vector1.png', // Background part of the checkmark
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/vector2.png', // Overlay part of the checkmark
                    height: 72,
                    width: 73,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Congratulations, your account has been successfully created',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30),
             Stack(
  children: [
    Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(17.0),
          ),
          child: Text(
            'BMW M5 CS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(17.0),
          ),
          child: Text(
            'Petrol Automatic V8',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ],
    ),
    // Line for BMW M5 CS
    Positioned(
                    left: 200, // Adjusted to match the image
                    top: 30, // Adjusted to align with the text and image
                    child: Container(
                      width: 1, // Thin line
                      height: 100, // Adjusted to reach the car
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    left: 200, // Adjusted to match the image
                    top: 130, // Adjusted to align with the car
                    child: Container(
                      width: 60, // Adjusted length to reach the car
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                  // Line for Petrol Automatic V8
                  Positioned(
                    left: 60, // Adjusted to match the image
                    top: 130, // Adjusted to align with the text and image
                    child: Container(
                      width: 1, // Thin line
                      height: 100, // Adjusted to reach the engine
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    left: 60, // Adjusted to match the image
                    top: 230, // Adjusted to align with the engine
                    child: Container(
                      width: 60, // Adjusted length to reach the engine
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
  ],
),
              SizedBox(height: 30),
              Container(
                width: 460, // full width of the container
                height: 463, // height of F03232 field
                color: Color(0xFFF03232).withOpacity(0.8), // F03232 color with some opacity
                child: Column(
                  children: [
                    SizedBox(height: 20), // Add spacing at the top
                    Image.asset(
                      'assets/images/carimage.png', // Replace with your car image asset
                      height: 330,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 48, vertical: 14),
                      ),
                      onPressed: () {
                        // Handle continue button press
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Add spacing at the bottom
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}