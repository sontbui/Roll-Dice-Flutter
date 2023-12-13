import 'package:flutter/material.dart';
import 'package:roll_dice_app/RollRandomDice.dart';

void main() {
  runApp(const MyApp());
}

const Color color1 = Color.fromARGB(121, 15, 237, 196);
const Color color2 = Color.fromARGB(121, 241, 241, 241);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: HomePage(color1, color2),
      ),
    );
  }
}
