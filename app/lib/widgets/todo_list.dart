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
            return TodoItem(index: index);
          }),
        ),
      ),
    );
  }
}

class TodoItem extends StatefulWidget {
  final int index;
  const TodoItem({Key? key, required this.index}) : super(key: key);

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  // bool isResolved = 10 % 2 == 0;
  late bool isResolved;

  @override
  void initState() {
    super.initState();
    isResolved = widget.index % 2 == 0;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isResolved = !isResolved;
        });
      },
      onDoubleTap: () {
        print('Hello world');
      },
      child: Todo(
        id: widget.index.toString(),
        key: ValueKey(widget.index),
        text: 'Design & develop this app',
        isResolved: isResolved,
      ),
    );
  }
}
