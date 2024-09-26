import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String image = "assets/images/Die-Image-1.png";

  void rollDice() {
    image = "assets/images/Die-Image-4.png";
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          image,
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
