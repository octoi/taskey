import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  final String id;
  final String text;
  final bool isResolved;

  const Todo({
    Key? key,
    required this.id,
    required this.text,
    required this.isResolved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      background: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 22.0),
        decoration: BoxDecoration(
          color: appPrimaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        alignment: Alignment.centerRight,
        child: const Icon(
          Icons.delete_outline,
          color: appErrorColor,
          size: 30.0,
        ),
      ),
      direction: DismissDirection.endToStart,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 22.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: isResolved ? appAccentColor : appSecondaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CheckIcon(isResolved: isResolved),
            const SizedBox(width: 10.0),
            Expanded(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 22.0,
                  color: isResolved ? appSecondaryColor : appAccentColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CheckIcon extends StatelessWidget {
  final bool isResolved;

  const CheckIcon({Key? key, required this.isResolved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: appSecondaryColor,
        border: Border.all(
          width: 2,
          color: isResolved ? appSecondaryColor : appAccentColor,
        ),
      ),
      padding: const EdgeInsets.all(2.0),
      child: const Icon(
        Icons.check,
        color: appAccentColor,
      ),
    );
  }
}
