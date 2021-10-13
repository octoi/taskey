import 'package:app/widgets/todo.dart';
import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: List.generate(20, (index) {
            return Todo(
              id: index.toString(),
              key: ValueKey(index),
              text: 'Design & develop this app',
              isResolved: index % 2 == 0,
            );
          }),
        ),
      ),
    );
  }
}
