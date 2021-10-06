import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:todoapp/screens/home_screen.dart';

import 'custom-listitle.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TaskData>(builder: (context, tasklist, child) {
        return ListView.builder(
            itemCount: tasklist.getLength,
            itemBuilder: (context, index) {
              final item = tasklist.task[index].toString();
              return Dismissible(
                key: Key(item),
                onDismissed: (direction) {
                  // Remove the item from the data source.

                  // currently it does not work in a right way

                  tasklist.swiptDelete(int.parse(item));
                },
                background: Container(color: Colors.red),
                child: CustomListTile(
                  taskName: tasklist.task[index].name,
                  isCheckVersion: tasklist.task[index].isChecked,
                  onChangedChecked: (checkState) {
                    tasklist.updateTask(tasklist.task[index]);
                  },
                  onLongPress: () {
                    tasklist.deleteTask(tasklist.task[index]);
                  },
                ),
              );
            });
      }),
    );
  }
}
