import 'package:flutter/material.dart';
import 'package:test_1/HomeScreen.dart';

//

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBD2D2D),
      body: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: Color(0xFFF03232),
            ),
            //color: Color(0xFFF03232),
            //width: 336,
            padding: EdgeInsets.only(left: 24, top: 29),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  //child: IconButton(
                    //icon: Icon(Icons.arrow_back, color: Colors.white),
                    //onPressed: () {
                      // Handle back action
                    //},
                  //),
                ),
                Spacer(),
                Center(
                  child: Image.asset(
                    'assets/images/carguylogo.png',
                    width: 223,
                    height: 68,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              //height: 400,
              //width: 362.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(5),
                ),
              ),
              child: Padding(
                
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 60),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Mobile No.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                          color: Color(0xFFF03232).withOpacity(0.5),
                          width: 2.0,
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'assets/images/phonecall.png',
                              width: 24,
                              height: 24,
                            ),
                          ),
                          hintText: 'Enter Your Mobile No.',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 80),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF03232),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        onPressed: () {
                           Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
                          // Handle login action
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have any account?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle sign up action
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}