import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

// ✅ SOLO UNA VEZ: Mantén UNA versión de GameScreen
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
                  fontSize: 54.sp,
                  fontFamily: 'Comic Sans MS',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.h),

              // Botón de Play con tamaño adaptable
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlayScreen()),
                  );
                },
                child: Image.asset(
                  'assets/imgs/play.png',
                  width: 100.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ✅ PlayScreen: No hay cambios aquí
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
