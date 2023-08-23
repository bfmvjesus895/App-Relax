import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AmbientMode(
        builder: (context, mode, _) {
          bool isAmbient = mode == WearMode.ambient;
          return Opacity(
            opacity: isAmbient ? 0.6 : 1,
            child: Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('img/profile.png'),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Text('Buy', 
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 10, 
                      decoration: TextDecoration.none
                      ),
                    ),
                  ],
              )),
          );
        }
      ),
    );
  }
}



