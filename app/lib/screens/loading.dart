import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appPrimaryColor,
      body: Center(
        child: CircularProgressIndicator(
          color: appAccentColor,
        ),
      ),
    );
  }
}
