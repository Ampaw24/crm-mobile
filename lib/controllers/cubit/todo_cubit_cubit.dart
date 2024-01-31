import 'package:bloc/bloc.dart';
import 'package:crm_mobile/model/todomodel.dart';


class TodoCubitCubit extends Cubit<List<TodoTaskModel>> {
  
  TodoCubitCubit() : super([]);
  void addTask(String title,String date,bool isCompleted){
    final list = TodoTaskModel(summary: title, date: date, isCompleted: isCompleted);
    state.add(list);
    emit([...state]);

  }


}
