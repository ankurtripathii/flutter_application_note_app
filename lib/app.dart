import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dice_screen.dart';
class DiceApp extends StatelessWidget {
  const DiceApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiceScreen(),
    );
  }
} 