import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference our box

  final _myBox = Hive.box('mybox');

  //run this method if this os the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Practice Flutter", false],
      ["Do exercise", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");

  }

  //update the database
  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }

//
}
