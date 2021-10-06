import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:todoapp/widgets/TaskList.dart';
import 'package:todoapp/widgets/custom-listitle.dart';

class BottomSheetLayout extends StatelessWidget {
  String textName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 385,
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Add task",
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (value) {
                  textName = value;
                },
                autofocus: true,
                enableSuggestions: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(textName);
                  Navigator.pop(context);
                },
                child: Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    fixedSize: Size(270, 60)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
