import 'package:flutter/material.dart';
import 'dart:math';

final normalizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {

  // Initial dice face value
  int diceRoller = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/dice_images/dice-$diceRoller.png'),
              TextButton(
                onPressed: () {
                  setState(() {
                    diceRoller = normalizer.nextInt(6) + 1;
                  });
                },
                child: Text(
                  "Roll Dice",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
