import 'package:app/utils/colors.dart';
import 'package:app/utils/user.dart';
import 'package:flutter/material.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = getUser;

    return BottomAppBar(
      color: appSecondaryColor,
      child: TabBar(
        padding: const EdgeInsets.all(10.0),
        indicatorColor: appAccentColor,
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: appAccentColor.withOpacity(0.3),
        labelColor: appAccentColor,
        tabs: [
          const Tab(icon: Icon(Icons.format_list_bulleted)),
          const Tab(icon: Icon(Icons.show_chart)),
          Tab(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage(user.photoURL!),
            ),
          ),
        ],
      ),
    );
  }
}
