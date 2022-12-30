import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todomanager/models/task_data.dart';
import 'Screens/task_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => TaskData()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
