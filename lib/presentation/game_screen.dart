import 'package:flutter/material.dart';
import 'result_screen.dart'; // Importa la pantalla de resultados

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int aciertos = 0;
  int errores = 0;

  void aumentarAciertos() {
    setState(() {
      aciertos++;
    });
  }

  void aumentarErrores() {
    setState(() {
      errores++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Juego de Preguntas")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Aciertos: $aciertos', style: TextStyle(fontSize: 24, color: Colors.green)),
            Text('Errores: $errores', style: TextStyle(fontSize: 24, color: Colors.red)),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: aumentarAciertos,
              child: Text('Aumentar Acierto'),
            ),

            ElevatedButton(
              onPressed: aumentarErrores,
              child: Text('Aumentar Error'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultScreen(aciertos, errores)),
                );
              },
              child: Text('Ver Resultados'),
            ),
          ],
        ),
      ),
    );
  }
}
