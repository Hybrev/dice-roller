import 'package:flutter/material.dart';
import 'package:roll_dice/roll_dice.dart';
// import 'package:roll_dice/styled_text.dart';

const startingAlign = Alignment.topLeft;
const endingAlign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  const GradientContainer.purple({super.key})
      : colors = const [Colors.blue, Colors.indigo];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startingAlign,
          end: endingAlign,
          colors: colors,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
