import 'package:flutter/material.dart';

class footer extends StatelessWidget {
  const footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.all(10),
                child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add_circle),
          label: Text("New Reminder")),
      TextButton(onPressed: () {}, child: Text("Add List")),
    ]));
  }
}




