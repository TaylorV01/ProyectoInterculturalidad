import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screenPlay.dart'; // Ensure this file exists

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const GameScreen(),
        );
      },
    );
  }
}

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background/bck.jpg',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.black,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Play',
                  style: TextStyle(
                    fontSize: 54.sp,
                    fontFamily: 'Arial',
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Jugar',
                  style: TextStyle(
                    fontSize: 54.sp,
                    fontFamily: 'Arial',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.h),

                // Corrected navigation to PlayScreen
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlayScreen()), // Fix: Removed 'const'
                    );
                  },
                  child: Image.asset(
                    'assets/imgs/play.png',
                    width: 100.w,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.play_circle_fill,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
