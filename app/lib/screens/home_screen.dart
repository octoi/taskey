import 'package:app/utils/colors.dart';
import 'package:app/widgets/fab.dart';
import 'package:app/widgets/todo_list.dart';
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
          style: TextStyle(color: appAccentColor),
        ),
      ),
      floatingActionButton: Fab(),
      body: TodoList(),
    );
  }
}
