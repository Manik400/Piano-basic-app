import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void s(int ss) {
    final player = AudioPlayer();
    player.play(UrlSource('assets/note$ss.wav'));
  }
  Expanded k({Color color , int sn}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          s(sn);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              k(color: Colors.red , sn: 1),
              k(color: Colors.orange , sn: 2),
              k(color: Colors.yellow , sn: 3),
              k(color: Colors.blue , sn: 4),
              k(color: Colors.indigo , sn: 5),
              k(color: Colors.pink , sn: 6),
              k(color: Colors.purple , sn: 7),
            ],
          ),
        ),
      ),
    );
  }
}
