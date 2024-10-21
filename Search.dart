import 'package:flutter/material.dart';





class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/location.png',
            width: 14,
            height: 18,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ServiceOption(
                  primaryImagePath: 'assets/images/tool.png',
                  secondaryImagePath: 'assets/images/tool1.png',
                  label: 'Quick Service',
                ),
                ServiceOption(
                  primaryImagePath: 'assets/images/truck.png',
                  secondaryImagePath: 'assets/images/truck1.png',
                  label: 'Tow Truck',
                ),
                ServiceOption(
                  primaryImagePath: 'assets/images/car.png',
                  secondaryImagePath: 'assets/images/car1.png',
                  label: 'Car Guy Connect',
                ),
                ServiceOption(
                  primaryImagePath: 'assets/images/laptop.png',
                  secondaryImagePath: null,
                  label: 'Service History',
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('Odometer Reading', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Select odometer reading and we will recommend service'),
            Slider(
              value: 60.0,
              min: 0,
              max: 150,
              divisions: 5,
              label: '60K kms',
              onChanged: (double value) {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Reading (kms)'),
                Text('60,000 kms', style: TextStyle(fontWeight: FontWeight.bold)),
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
                    image: 'assets/images/service1.png', // Replace with your image asset
                    service: 'Standard Service',
                    price: '\$90',
                  ),
                  ServiceCard(
                    image: 'assets/images/service2.png', // Replace with your image asset
                    service: 'Regular AC Service',
                    price: '\$50',
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey[200],
              child: Image.asset(primaryImagePath, width: 24, height: 24),
            ),
            if (secondaryImagePath != null)
              Positioned(
                top: 5,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Image.asset(secondaryImagePath!, width: 24, height: 24),
                ),
              ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
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
              child: Image.asset(image, height: 100, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(service, style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text(price, style: TextStyle(color: Colors.red)),
                  SizedBox(height: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    ),
                    onPressed: () {
                      // Handle add button press
                    },
                    child: Center(child: Text('ADD')),
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
