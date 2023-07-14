import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 1;

  void rollDice() {
    setState(() {
      diceRoll = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 50,
          width: 280,
          child: Divider(
            color: Colors.white,
            thickness: 3,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow[400],
            shadowColor: Colors.black,
          ),
          onPressed: rollDice,
          child: const StyledText("ROLL DICE"),
        ),
      ],
    );
  }
}
