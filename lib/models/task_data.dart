import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Bread"),
    Task(name: "Buy Rice"),
  ];

  void addTask(String todoTextName) {
    _task.add(Task(name: todoTextName));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.onChanged();

    notifyListeners();
  }

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<Task> get task => UnmodifiableListView(_task);

  void deleteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }

  void swiptDelete(int itemIndex) {
    _task.removeAt(itemIndex);
    notifyListeners();
  }

  void showData() {
    for (var demo in task) {
      print(demo.name);
    }
    print(task.length);
  }

  int get getLength {
    return _task.length;
  }
}
