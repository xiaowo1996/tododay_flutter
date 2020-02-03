import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tododay_flutter/Widgets/task_widget.dart';
import 'task_screen.dart';
import 'package:tododay_flutter/models/task_data.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 25,
                color: Colors.lightBlue,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (value) {
                newTitle = value;
              },
            ),
            SizedBox(
              height: 25,
            ),
            ButtonTheme(
              minWidth: 300,
              height: 70,
              child: FlatButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addCount(newTitle);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
