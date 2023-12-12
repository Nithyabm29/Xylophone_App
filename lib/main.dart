import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone App'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playSound(Colors.red, 1),
              playSound(Colors.orange, 2),
              playSound(Colors.yellow, 3),
              playSound(Colors.green, 4),
              playSound(Colors.teal, 5),
              playSound(Colors.blue, 6),
              playSound(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded playSound(Color color, int num) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
        ),
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$num.wav'));
        },
        child: const Text(''),
      ),
    );
  }
}
