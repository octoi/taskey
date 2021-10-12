import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: appAccentColor,
              isExtended: true,
              child: const Icon(
                Icons.add,
                color: appPrimaryColor,
                size: 25.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
