import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Tune {
  final Color color;
  final String sound;
  const Tune({required this.color, required this.sound});

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/tunes2.wav'));
  }
}
