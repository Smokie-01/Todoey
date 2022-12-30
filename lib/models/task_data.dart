import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todomanager/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return tasks.length;
  }

  void addTasks(String enteredTask) {
    final task = Task(name: enteredTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleCheckBox();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
