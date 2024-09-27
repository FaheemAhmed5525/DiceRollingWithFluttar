


import 'package:flutter/material.dart';

import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  String image = "assets/images/Die-Image-1.png";

  var diceRoleValue = 2;

  void rollDice() { 
    setState(() {
      diceRoleValue = randomizer.nextInt(6) + 1;
    });
    
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/Die-Image-$diceRoleValue.png",
          width: 300,
        ),
        TextButton(
          onPressed: () {
            rollDice();
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(12),
            foregroundColor: const Color.fromARGB(255, 2, 42, 75),
            textStyle: const TextStyle(
              fontSize: 24,
            ),
          ),
          child: const Text(
            "Roll the Die",
          ),
        )
      ],
    );
  }
}
