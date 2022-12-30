import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todomanager/models/task_data.dart';

class AddTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String enteredTask = "";
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          children: [
            Text(
              "Add Tasks",
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) {
                  enteredTask = value;
                },
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  labelText: 'Enter your Tasks',
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTasks(enteredTask);
                  Navigator.pop(context);
                },
                style: ButtonStyle(elevation: MaterialStatePropertyAll(5)),
                child: Text(
                  "ADD",
                ))
          ],
        ),
      ),
    );
  }
}
