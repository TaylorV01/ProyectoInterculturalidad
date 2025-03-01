import 'package:flutter/material.dart';

class CostaAnimals extends StatelessWidget {
  const CostaAnimals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background/bck2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Back Button
          Positioned(
            top: 40, // Distance from the top
            left: 20, // Distance from the left
            child: GestureDetector(
              onTap: () {
                // Navigate back to the previous screen
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10), // Padding for the button
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7), // Semi-transparent white background
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  border: Border.all(
                    color: Colors.black, // Black border
                    width: 2, // Border width
                  ),
                ),
                child: Icon(
                  Icons.arrow_back, // Back arrow icon
                  size: 30, // Icon size
                  color: Colors.black, // Icon color
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // First Row of Selectors (3 selectors)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSelector('assets/imgs/costa/mono.png'), // Add your first image path here
                    SizedBox(width: 20), // Spacing between selectors
                    _buildSelector('assets/imgs/costa/rana.png'), // Add your second image path here
                    SizedBox(width: 20), // Spacing between selectors
                    _buildSelector('assets/imgs/costa/serpiente.png'), // Add your third image path here
                  ],
                ),
                SizedBox(height: 40), // Spacing between rows
                // Second Row of Selectors (3 selectors)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSelector('assets/imgs/costa/tortuga.png'), // Add your fourth image path here
                    SizedBox(width: 20), // Spacing between selectors
                    _buildSelector('assets/imgs/costa/tucan.png'), // Add your fifth image path here
                    SizedBox(width: 20), // Spacing between selectors
                    _buildSelector('assets/imgs/costa/zorra.png'), // Add your sixth image path here
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build a single selector
  Widget _buildSelector(String imagePath) {
    return Container(
      width: 200, // Selector width
      height: 300, // Selector height
      decoration: BoxDecoration(
        color: Colors.blue, // Background color of the selector
        borderRadius: BorderRadius.circular(20), // Rounded corners
        border: Border.all(
          color: Colors.black, // Black border
          width: 3, // Border width
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image with tap functionality
          GestureDetector(
            onTap: () {
              print('Image tapped: $imagePath');
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15), // Rounded corners for the image
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Black border for the image
                    width: 3, // Border width
                  ),
                  borderRadius: BorderRadius.circular(15), // Match the ClipRRect border radius
                ),
                child: Image.asset(
                  imagePath, // Image path passed as a parameter
                  width: 150, // Image width
                  height: 150, // Image height
                  fit: BoxFit.cover, // Ensure the image covers the space
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Spacing between image and buttons
          // OK and Wrong buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // OK Button
              ElevatedButton(
                onPressed: () {
                  print('OK button pressed for: $imagePath');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Green color for OK
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                ),
                child: Text(
                  'OK',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(width: 10), // Spacing between buttons
              // Wrong Button
              ElevatedButton(
                onPressed: () {
                  print('Wrong button pressed for: $imagePath');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Red color for Wrong
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                ),
                child: Text(
                  'Wrong',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}