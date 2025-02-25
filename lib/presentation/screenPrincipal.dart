import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/bck.jpg'),
            fit: BoxFit.cover, // Ajusta sin distorsionar
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Texto adaptado a la pantalla
              Text(
                'Play',
                style: TextStyle(
                  fontSize: 54.sp, // Escala el tamaño de fuente
                  fontFamily: 'Comic Sans MS',
                  color: Colors.white,
                ),
              ),
              Text(
                'Jugar',
                style: TextStyle(
                  fontSize: 54.sp, // Escala el tamaño de fuente
                  fontFamily: 'Comic Sans MS',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.h), // Espaciado adaptable

              // Botón de Play con tamaño adaptable
              GestureDetector(
                onTap: () {
                  print('Comenzar juego');
                },
                child: Image.asset(
                  'assets/imgs/play.png',
                  width: 100.w, // Tamaño escalable
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatelessWidget {
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
                    fontSize: 54,
                    fontFamily: 'Arial',
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Jugar',
                  style: TextStyle(
                    fontSize: 54,
                    fontFamily: 'Arial',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),

                // Botón que navega a la pantalla de juego
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlayScreen()),
                    );
                  },
                  child: Image.asset(
                    'assets/imgs/play.png',
                    width: 80,
                    height: 80,
                    errorBuilder: (context, error, stackTrace) => Icon(
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

// Nueva pantalla a la que se navega
class PlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Screen"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          "¡Bienvenido al Juego!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
