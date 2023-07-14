import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body: GradientContainer([Color.fromARGB(255, 7, 68, 138), Color.fromARGB(255, 8, 95, 153)])
        body: GradientContainer.purple()
      ),
    ),
  );
}

