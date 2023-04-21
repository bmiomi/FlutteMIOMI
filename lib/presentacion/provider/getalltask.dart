import 'package:flutter/material.dart';
import 'package:todo/data/data.dart';
import 'package:todo/domain/use_case/task/getall_task.dart';


class Getall extends ChangeNotifier {

  Getall({required this.getAllTask});

  final GetAllTask getAllTask;

  List<ModelTask> _tastolist = [];
  
  List<ModelTask> get tastolist => _tastolist;

  Future data() async {
    var astolist = await getAllTask.execute();
      if (astolist.length != _tastolist.length) {
        _tastolist.clear();
        _tastolist=astolist;
      }
    print(" objecto despues: ${_tastolist.length}");
    return _tastolist;
  
  }

  add(value){
    _tastolist.addAll(value);
    notifyListeners();
  }

  delete(index){
    _tastolist.removeAt(index);    
  }

  update(id){
    // _tastolist
  }





}
