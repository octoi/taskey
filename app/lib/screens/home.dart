import 'package:app/utils/colors.dart';
import 'package:app/widgets/app_bottom_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: appPrimaryColor,
        body: TabBarView(children: [
          Icon(Icons.directions_car),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ]),
        bottomNavigationBar: AppBottomBar(),
      ),
    );
  }
}
