import 'package:flutter/material.dart';
import 'sierraAnimals.dart'; // Import the SierraAnimals screen
import 'costaAnimals.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

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
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Selecciona un Nivel',
                  style: TextStyle(
                    fontSize: 60, // Larger font size for the title
                    fontFamily: 'Comic Sans MS',
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 2,
                      ),
                      Shadow(
                        color: Colors.black,
                        offset: Offset(-2, -2),
                        blurRadius: 2,
                      ),
                      Shadow(
                        color: Colors.black,
                        offset: Offset(2, -2),
                        blurRadius: 2,
                      ),
                      Shadow(
                        color: Colors.black,
                        offset: Offset(-2, 2),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60), // Increased spacing
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // First Level Selector
                    GestureDetector(
                      onTap: () {
                        print('Animales de la Sierra seleccionado');
                        // Navigate to the SierraAnimals screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SierraAnimals(),
                          ),
                        );
                      },
                      child: Container(
                        width: 300, // Much larger width
                        height: 400, // Much larger height
                        decoration: BoxDecoration(
                          color: Colors.blue, // Striking color
                          borderRadius: BorderRadius.circular(20), // Larger border radius
                          border: Border.all(
                            color: Colors.black, // Black border for the selector box
                            width: 3, // Border width
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
                          children: [
                            ClipRRect(
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
                                  'assets/imgs/sierra.jpg', // Image for the first selector
                                  width: 200, // Larger image
                                  height: 200,
                                  fit: BoxFit.cover, // Ensure the image covers the space
                                ),
                              ),
                            ),
                            SizedBox(height: 30), // Increased spacing
                            Text(
                              'Animales de la Sierra',
                              textAlign: TextAlign.center, // Center text horizontally
                              style: TextStyle(
                                fontSize: 28, // Larger font size
                                color: Colors.white,
                                fontFamily: 'Comic Sans MS',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 80), // Increased spacing between selectors
                    // Second Level Selector
                    GestureDetector(
                      onTap: () {
                        print('Animales de la Costa seleccionado');
                        // Navigate to the CostaAnimals screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CostaAnimals(),
                          ),
                        );
                      },
                      child: Container(
                        width: 300, // Much larger width
                        height: 400, // Much larger height
                        decoration: BoxDecoration(
                          color: Colors.green, // Striking color
                          borderRadius: BorderRadius.circular(20), // Larger border radius
                          border: Border.all(
                            color: Colors.black, // Black border for the selector box
                            width: 3, // Border width
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
                          children: [
                            ClipRRect(
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
                                  'assets/imgs/costa.png', // Image for the second selector
                                  width: 200, // Larger image
                                  height: 200,
                                  fit: BoxFit.cover, // Ensure the image covers the space
                                ),
                              ),
                            ),
                            SizedBox(height: 30), // Increased spacing
                            Text(
                              'Animales de la Costa',
                              textAlign: TextAlign.center, // Center text horizontally
                              style: TextStyle(
                                fontSize: 28, // Larger font size
                                color: Colors.white,
                                fontFamily: 'Comic Sans MS',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}