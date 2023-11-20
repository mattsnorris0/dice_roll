import 'package:flutter/material.dart';

// import 'package:first_app/styled_text.dart';
import 'package:dice_roll/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
var startColor = const Color.fromARGB(255, 131, 67, 240);
var endColor = const Color.fromARGB(255, 34, 11, 73);

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
