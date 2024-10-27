import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference out box
  final _myBox = Hive.box('mybox');

// run this methord if this is the 1st time ever openig this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Expersice", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
