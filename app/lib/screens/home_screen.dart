import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: AppBar(
        backgroundColor: appSecondaryColor,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Taskey',
          style: TextStyle(
            color: appAccentColor,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
