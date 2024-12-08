import 'package:flutter/material.dart';
import 'package:tunes/model/tune.dart';

class ColoredRow extends StatelessWidget {
  final Tune tune;
  const ColoredRow(this.tune, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onDoubleTap: () {
          tune.playSound();
        },
        child: Container(
          width: double.infinity,
          color: tune.color,
        ),
      ),
    );
  }
}
