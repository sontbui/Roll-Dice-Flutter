import 'dart:math';

import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class HomePage extends StatelessWidget {
  const HomePage(this.color1, this.color2, {super.key});

  final Color color1, color2;
  const HomePage.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = const Color.fromARGB(255, 236, 236, 238);
  @override
  Widget build(context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAligment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

var ranOptimize = Random();
var randomNum = ranOptimize.nextInt(6) + 1;

class _RollDiceState extends State<RollDice> {
  Color buttonColor = const Color.fromARGB(255, 126, 239, 228);
  void rolldice() {
    setState(() {
      randomNum = ranOptimize.nextInt(6) + 1;
      buttonColor = const Color.fromARGB(255, 229, 70, 17);
    });
    Future.delayed(const Duration(milliseconds: 80), () {
      setState(() {
        buttonColor =
            const Color.fromARGB(255, 126, 239, 228); // Trở về màu sắc cũ
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Development by sontbui',
          style: TextStyle(
            color: Color.fromARGB(255, 3, 95, 44),
            fontSize: 30,
            fontFamily: 'HedvigLettersSerif',
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 50),
        const Text(
          'Rolling dice',
          style: TextStyle(
            color: Color.fromARGB(255, 1, 6, 6),
            fontSize: 30,
            fontFamily: 'Raleway',
          ),
        ),
        const SizedBox(height: 20),
        Image.asset(
          'assets/images/dice-$randomNum.png',
          width: 200,
        ),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: rolldice,
          style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.teal),
              backgroundColor: buttonColor),
          child: const Text(
            'Roll',
            style: TextStyle(
                fontSize: 30,
                color: Colors.black38,
                fontFamily: 'HedvigLettersSerif'),
          ),
        ),
      ],
    );
  }
}
