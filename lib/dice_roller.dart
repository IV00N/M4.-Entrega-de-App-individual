import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  // Do not add a build method, add a createState method
  @override 
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// private class
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png'; // cambiado por ivan
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // Value between 1 and 6
    });
    // print('Changing image...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png', // cambiado por ivan
          width: 200, // cambiado por ivan
        ),
        const SizedBox(height: 20),
        TextButton(
          // onPressed: () {}),
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20,),
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurple, // cambiado por ivan
            textStyle: const TextStyle(
              fontSize: 36, // cambiado por ivan
            ),
          ),
          child: const Text(
            'Tirar Dado', // cambiado por ivan
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
