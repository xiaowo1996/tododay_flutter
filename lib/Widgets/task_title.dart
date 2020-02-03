import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  TaskTitle({this.isChecked, this.checkboxCallback, this.taskTitle});
  final bool isChecked;
  final Function checkboxCallback;
  final String taskTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
