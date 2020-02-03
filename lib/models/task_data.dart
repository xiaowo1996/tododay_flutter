import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy a milk'),
    Task(name: 'Buy a eggs'),
    Task(name: 'Buy a bread'),
  ];
  int getCount() {
    return tasks.length;
  }

  void addCount(String title) {
    tasks.add(
      Task(name: title, isDone: false),
    );
    notifyListeners();
  }

  void changeState(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
