import 'package:flutter/material.dart';
import 'package:test_1/SelectionScreen.dart';




class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
             mainAxisSize: MainAxisSize.min,
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
             
              InkWell(
                onTap: () {
                if (Navigator.canPop(context)) {
    Navigator.pop(context);
  } else {
    // You could navigate to a default screen here if there's no previous screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()), // Example
    );
  }
                },
                child: Image.asset(
                  'assets/images/leftarrow.png', // Back button image
                  width: 14,
                  height: 14,
                ),
              ), // Back icon
              SizedBox(width: 10),
              Image.asset(
                'assets/images/location.png',
                width: 16,
                height: 16,
              ),
            ],
          ), // Location icon
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Kadayanallur',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(width: 4),
            Image.asset(
              'assets/images/dropdown.png', // Dropdown icon
              width: 16,
              height: 9,
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications, color: Colors.black),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/bmwlogo.png'), // BMW logo
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Image.asset('assets/images/searchicon.png'), // Search icon
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.start,
              children: [
                ServiceOption(
                  primaryImagePath: 'assets/images/tool.png',
                  secondaryImagePath: 'assets/images/tool1.png',
                  label: 'Quick Service',
                ),
                ServiceOption(
                  primaryImagePath: 'assets/images/truck.png',
                  secondaryImagePath: 'assets/images/truck1.png',
                  label: 'SOS',
                ),
                ServiceOption(
                  primaryImagePath: 'assets/images/car.png',
                  secondaryImagePath: 'assets/images/car1.png',
                  label: 'OBD Connect',
                ),
                ServiceOption(
                  primaryImagePath: 'assets/images/laptop.png',
                  secondaryImagePath: null,
                  label: 'History',
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('Odometer Reading', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Select odometer reading and we will recommend service'),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.red,
                inactiveTrackColor: Colors.grey[300],
                thumbColor: Colors.red,
                overlayColor: Colors.red.withOpacity(0.2),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
              ),
              child: Slider(
                value: 60.0,
                min: 0,
                max: 150,
                divisions: 5,
                label: '60,000 kms',
                onChanged: (double value) {
                  // Handle slider value change
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Reading (kms)'),
                Text('60,000 kms', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
              ],
            ),
            SizedBox(height: 16),
            Text('Recommended Service', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Showing result based on your odometer reading'),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ServiceCard(
                    image: 'assets/images/service1.png',
                    service: 'Standard Service',
                    price: 'Starts @ \$34',
                  ),
                  ServiceCard(
                    image: 'assets/images/service2.png',
                    service: 'Regular AC Service',
                    price: 'Starts @ \$37',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Change this to update selected tab
        onTap: (index) {
          // Handle navigation tap
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.card_membership), label: 'Membership'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class ServiceOption extends StatelessWidget {
  final String primaryImagePath;
  final String? secondaryImagePath;
  final String label;

  ServiceOption({
    required this.primaryImagePath,
    this.secondaryImagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Image.asset(primaryImagePath, width: 24, height: 24),
                ),
              ),
              if (secondaryImagePath != null)
                Positioned(
                  top: 5,
                  right: 5,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: Image.asset(secondaryImagePath!, width: 12, height: 12),
                  ),
                ),
            ],
          ),
          SizedBox(width: 12),
          Text(
            label,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}



class ServiceCard extends StatelessWidget {
  final String image;
  final String service;
  final String price;

  ServiceCard({required this.image, required this.service, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.only(right: 16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.asset(image, height: 82, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(service, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text(price, style: TextStyle(color: Colors.red)),
                  SizedBox(height: 5),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      minimumSize: Size(double.infinity, 36),
                    ),
                    onPressed: () {
                      // Handle book button press
                    },
                    child: Center(child: Text('Book', style: TextStyle(fontSize: 14), selectionColor: Colors.white,)),
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