import 'package:app/screens/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Taskey());
}

class Taskey extends StatelessWidget {
  const Taskey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}
