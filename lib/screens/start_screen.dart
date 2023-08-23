import 'dart:developer';
import 'package:app_relax/screens/name_screen.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WatchShape(
        builder: (context, shape, child){
        var screenSize = MediaQuery.of(context).size;
        log(screenSize.toString());
        final shapeForm = WatchShape.of(context);
        log(shapeForm.toString());

        if(shapeForm == WearShape.round){
          screenSize = Size((screenSize.width /2)*1.4142,
          (screenSize.height /2)* 1.4142);
        }

        var screenHeight = screenSize.height;
        var screenWidth = screenSize.width;

        return SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const FlutterLogo(size: 90),
              const SizedBox(height: 20),
            ElevatedButton(
              child: const Text(
                'Iniciar',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return NameScreen(screenHeight,screenWidth);
                  }));
                },
              )
            ],
          ),
        );
      }
      ),
    );
  }
}