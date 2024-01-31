import 'package:flutter/material.dart';
import '../model/todomodel.dart';

class TodoController with ChangeNotifier {
  List<TodoTaskModel> _todos = [];

  List<TodoTaskModel> get todos => _todos;
  int get todoCount => todos.length;

  set todos(List<TodoTaskModel> value) {
    _todos = value;
  }

  void addTask(String summary, String date,String time){
    final task = TodoTaskModel(summary: summary, date: "$date $time", isCompleted: true);
    todos.add(task);
    FocusManager.instance.primaryFocus?.unfocus();
    
    notifyListeners();
    print("Notified Listener");
  }
}
