import 'package:flutter/material.dart';

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
                    fontFamily: 'Comic Sans MS',
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Jugar',
                  style: TextStyle(
                    fontSize: 54,
                    fontFamily: 'Comic Sans MS',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),

                //para testearlo puse este mensaje pero aqui deben
                //implementar la logica del boton
                GestureDetector(
                  onTap: () {
                    print('Comenzar juego');
                  },

                  //boton de play
                  child: Image.asset(
                    'assets/imgs/play.png',
                    width: 80,
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
