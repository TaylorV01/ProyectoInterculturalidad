import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class CostaAnimals extends StatefulWidget {
  const CostaAnimals({super.key});

  @override
  _CostaAnimalsState createState() => _CostaAnimalsState();
}

class _CostaAnimalsState extends State<CostaAnimals> {
  // Instancia única de AudioPlayer
  final AudioPlayer _player = AudioPlayer();

  @override
  void dispose() {
    // Detener el sonido al salir de la pantalla
    _player.dispose();
    super.dispose();
  }

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
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSelector('assets/imgs/costa/mono.png', 'mono.mp3'),
                    SizedBox(width: 20),
                    _buildSelector('assets/imgs/costa/rana.png', 'rana.mp3'),
                    SizedBox(width: 20),
                    _buildSelector(
                        'assets/imgs/costa/serpiente.png', 'serpiente.mp3'),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSelector(
                        'assets/imgs/costa/ballena.jpg', 'ballena.mp3'),
                    SizedBox(width: 20),
                    _buildSelector('assets/imgs/costa/tucan.png', 'tucan.mp3'),
                    SizedBox(width: 20),
                    _buildSelector('assets/imgs/costa/zorra.png', 'zorra.mp3'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Método para reproducir sonido y detener el sonido anterior
  void _playSound(String soundFile) async {
    // Detener cualquier sonido que se esté reproduciendo
    await _player.stop();

    // Reproducir el nuevo sonido
    await _player.play(AssetSource("sounds/$soundFile"));
  }

  // Método para construir un selector con sonido
  Widget _buildSelector(String imagePath, String soundFile) {
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              _playSound(soundFile); // Reproducir el sonido al tocar la imagen
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  imagePath,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('OK button pressed for: $imagePath');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
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
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  print('Wrong button pressed for: $imagePath');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
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
