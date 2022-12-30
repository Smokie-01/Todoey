import 'package:flutter/material.dart';
import 'package:todomanager/models/task.dart';
import 'package:todomanager/models/task_data.dart';
import 'package:todomanager/widgets/Task_Tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: Provider.of<TaskData>(context).taskCount,
          itemBuilder: ((context, index) {
            return TaskTile(
              removeTask: () {
                taskData.removeTask(taskData.tasks[index]);
              },
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkBoxCallBack: (checkBoxState) {
                taskData.updateTask(taskData.tasks[index]);
              },
            );
          }),
        );
      },
    );
  }
}
