import 'package:app/utils/colors.dart';
import 'package:app/widgets/app_bottom_bar.dart';
import 'package:app/widgets/todo_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: appPrimaryColor,
        appBar: AppBar(
          backgroundColor: appSecondaryColor,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'Taskey',
            style: TextStyle(
              color: appAccentColor,
              fontSize: 22.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: const TabBarView(children: [
          TodoList(),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ]),
        bottomNavigationBar: const AppBottomBar(),
      ),
    );
  }
}
