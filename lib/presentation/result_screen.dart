import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int aciertos;
  final int errores;

  ResultScreen(this.aciertos, this.errores);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultados")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Resultados Finales', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('✅ Aciertos: $aciertos', style: TextStyle(fontSize: 24, color: Colors.green)),
            Text('❌ Errores: $errores', style: TextStyle(fontSize: 24, color: Colors.red)),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Volver al Juego'),
            ),
          ],
        ),
      ),
    );
  }
}
