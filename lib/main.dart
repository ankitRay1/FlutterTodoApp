import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/screens/home_screen.dart';

import 'models/task_data.dart';

void main() => runApp(ChangeNotifierProvider<TaskData>(
    create: (context) => TaskData(), child: const TodoApp()));

class TodoApp extends StatelessWidget {
  const TodoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
