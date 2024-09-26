import 'package:flutter/material.dart';

import 'package:rolling_die/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: const Color.fromARGB(255, 189, 97, 212),
        body: GradientContainer(
          Color.fromARGB(255, 215, 48, 48), 
          Color.fromARGB(255, 228, 114, 82)
        ),
      ),
    ),
  );
}
