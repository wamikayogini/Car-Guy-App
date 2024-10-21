import 'package:flutter/material.dart';




class SelectionScreen extends StatefulWidget {
  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  String selectedMake = 'BMW';
  String selectedModel = 'M5 CS';
  String selectedVariant = 'Petrol Automatic V8';
  final TextEditingController _registerNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFF03232),
        elevation: 0,
        leading: IconButton(
          icon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/back.png', // Path to back button image
                height: 14,
                width: 14,
              ),
              SizedBox(width: 7),
              Expanded(
                child: Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis, // Ensures text does not overflow
                ),
              ),
            ],
          ),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xFFF03232),
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Center(
                child: Image.asset(
                  'assets/images/carguylogo.png', // Add your logo here
                  height: 100,
                ),
              ),
            ),
            //WHITE FIELD
            Container(
              margin: EdgeInsets.only(top: 40),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Pick Your Car',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 34),
                  Text(
                    'Make',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFF03232)),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: DropdownButton<String>(
                      value: selectedMake,
                      isExpanded: true,
                      underline: SizedBox(), // Removes the default underline
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedMake = newValue!;
                        });
                      },
                      items: <String>['BMW', 'Audi', 'Mercedes']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 12.0), 
                              ),
                          ),
                        );
                      }).toList(),
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Image.asset(
                          'assets/images/down.png', // Custom dropdown icon
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                     width: 370.0, // Match the width of the TextField
                     height: 50.0, // Set the height to be consistent with the TextField
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Model',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                   SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFF03232)),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: DropdownButton<String>(
                      value: selectedModel,
                      isExpanded: true,
                      underline: SizedBox(), // Removes the default underline
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedModel = newValue!;
                        });
                      },
                      items: <String>['M5 CS', 'A6', 'C-Class']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 12.0), 
                              ),
                          ),
                        );
                      }).toList(),
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Image.asset(
                          'assets/images/down.png', // Custom dropdown icon
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                     width: 370.0, // Match the width of the TextField
                     height: 50.0, // Set the height to be consistent with the TextField
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Variants',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                   SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFF03232)),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: DropdownButton<String>(
                      value: selectedVariant,
                      isExpanded: true,
                      underline: SizedBox(), // Removes the default underline
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedVariant = newValue!;
                        });
                      },
                      items: <String>['Petrol Automatic V8', 'Diesel Manual V6']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Text(
                              value,
                            style: TextStyle(fontSize: 12.0), 
                            ),
                          ),
                        );
                      }).toList(),
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Image.asset(
                          'assets/images/down.png', // Custom dropdown icon
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                     width: 370.0, // Match the width of the TextField
                     height: 50.0, // Set the height to be consistent with the TextField
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Register Number',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
SizedBox(height: 3),
Container(
  width: 370.0,
  height: 53, // Adjust the width as needed
  child: TextField(
    controller: _registerNumberController,
    decoration: InputDecoration(
      hintText: 'Type Your Vehicle Register Number',
      hintStyle: TextStyle(
        color: Colors.grey, // Set hint text color to black
        fontSize: 12.0, // Set the font size of the hint text
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(color: Color(0xFFF03232)), // Set border color
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(color: Color(0xFFF03232)), // Set border color
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(color: Color(0xFFF03232)), // Set border color
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 25.0), // Adjust the horizontal padding
    ),
  ),
),



                  SizedBox(height: 32),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF03232),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 48, vertical: 14),
                      ),
                      onPressed: () {
                        // Handle confirm button press
                      },
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
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
