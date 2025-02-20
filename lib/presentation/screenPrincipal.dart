Equipo-B
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

                // Botón de Play interactivo
                GestureDetector(
                  onTap: () {
                    // Aquí va la lógica para comenzar el juego
                    print('Comenzar juego');
                    // Puedes navegar a otra pantalla o iniciar el juego aquí
                    // Navigator.push(...); o cualquier lógica relacionada
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          blurRadius: 8,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      size: 50,
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
=======
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
main
