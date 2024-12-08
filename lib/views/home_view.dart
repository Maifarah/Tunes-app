import 'package:flutter/material.dart';
import 'package:tunes/widgets/colored_row.dart';
import 'package:tunes/model/tune.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  List<Tune> coloredTune = const [
    Tune(color: Colors.red, sound: 'tunes1.wav'),
    Tune(color: Colors.amber, sound: 'tunes2.wav'),
    Tune(color: Colors.purple, sound: 'tunes3.wav'),
    Tune(color: Colors.green, sound: 'tunes4.wav'),
    Tune(color: Colors.blueGrey, sound: 'tunes5.wav'),
    Tune(color: Colors.pink, sound: 'tunes6.wav'),
  ];

  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 35, 51),
        title: const Text(
          'Flutter Tunes',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: coloredTune.map((tune) => (ColoredRow(tune))).toList(),
      ),
    );
  }
}
