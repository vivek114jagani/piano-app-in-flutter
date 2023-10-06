import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Piano extends StatefulWidget {
  const Piano({super.key});

  @override
  State<Piano> createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  final player = AudioPlayer();

  List color = [
    Colors.yellow,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.cyanAccent,
    Colors.orange,
    Colors.deepPurple,
  ];

  List audio = [
    "assets_note1.wav",
    "assets_note2.wav",
    "assets_note3.wav",
    "assets_note4.wav",
    "assets_note5.wav",
    "assets_note6.wav",
    "assets_note7.wav",
  ];

  List text = [
    "sa",
    "re",
    "ga",
    "ma",
    "pa",
    "dha",
    "ni",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          color.length, //OR.
          // 7,
          (index) {
            return Expanded(
              child: InkWell(
                onTap: () {
                  setState(
                    () {
                      player.play(
                        AssetSource(
                          audio[index],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  color: color[index],
                  // child: Center(
                  //   child: Text(
                  //     text[index],
                  //     style: const TextStyle(fontSize: 20),
                  //   ),
                  // ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
