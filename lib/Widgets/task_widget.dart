import 'package:flutter/material.dart';
import 'package:tododay_flutter/Screens/add-screen.dart';
import 'package:tododay_flutter/Widgets/task_title.dart';
import 'package:tododay_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:tododay_flutter/models/task_data.dart';

class TaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return GestureDetector(
            onLongPress: () {
              taskData.deleteTask(task);
            },
            child: TaskTitle(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (choice) {
                taskData.changeState(task);
              },
            ),
          );
        },
        itemCount: taskData.getCount(),
      ),
    );
  }
}
