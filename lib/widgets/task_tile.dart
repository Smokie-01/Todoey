import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallBack,
      this.removeTask});

  bool isChecked = false;
  final String taskTitle;
  final void Function(bool?) checkBoxCallBack;
  final VoidCallback? removeTask;

  @override
  Widget build(
    BuildContext context,
  ) {
    return ListTile(
      leading: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 18,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Wrap(children: [
        Checkbox(
          activeColor: Colors.lightBlueAccent,
          onChanged: checkBoxCallBack,
          value: isChecked,
        ),
        IconButton(
            onPressed: removeTask,
            icon: Icon(
              Icons.delete_outline,
              size: 28,
            )),
      ]),
    );
  }
}
