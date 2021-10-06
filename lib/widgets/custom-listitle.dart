import 'package:flutter/material.dart';
import 'package:todoapp/screens/home_screen.dart';

import '../constant.dart';

// ignore: camel_case_types
class CustomListTile extends StatelessWidget {
  final String taskName;

  final Function onChangedChecked;
  final bool isCheckVersion;

  final Function onLongPress;

  CustomListTile(
      {this.taskName,
      this.isCheckVersion,
      this.onChangedChecked,
      this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskName,
        style: KlistTextStyle.copyWith(
            decoration: isCheckVersion
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isCheckVersion,
        onChanged: onChangedChecked,
        side: BorderSide(width: 16.0, color: Colors.black),
      ),
    );
  }
}
