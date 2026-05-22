import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
class JournalApp extends StatelessWidget {
  const JournalApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journal App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
} 