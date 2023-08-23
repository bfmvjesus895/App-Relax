import 'package:app_relax/screens/ambient_screen.dart';
import 'package:app_relax/screens/relax_menu.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

class NameScreen extends StatelessWidget {
  final screenHeight;
  final screenWidth;

  const NameScreen(this.screenHeight, this.screenWidth, {super.key});

  @override
  Widget build(BuildContext context) {
    return AmbientMode(
      builder: (context, mode, child) => mode == WearMode.active
          ? NameScreenUI(screenHeight, screenWidth)
          : const AmbientWatchFace(),
    );
  }
}

class NameScreenUI extends StatelessWidget {
  final screenHeight;
  final screenWidth;

  const NameScreenUI(this.screenHeight, this.screenWidth, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: [
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/outline_arrow.png',
                      scale: 1.8,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('Regresar',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ))
                  ],
                ),
                onTap: () => Navigator.of(context).pop(),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'DS02SV-22',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Jesus Arturo Perez Mendez',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.blue[700],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return RelaxView(screenHeight, screenWidth);
                  }));
                },
                child: const Text(
                  'Siguiente',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
