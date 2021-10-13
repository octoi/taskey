import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class Fab extends StatelessWidget {
  const Fab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: appAccentColor,
      child: const Icon(
        Icons.add,
        color: appPrimaryColor,
        size: 25.0,
      ),
    );
  }
}
