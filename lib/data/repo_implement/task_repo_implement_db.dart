import 'package:todo/data/data_sources/local/task_datasource_implent.dart';
import 'package:todo/data/models/task_model.dart';
import 'package:todo/domain/domain.dart';

class TaskRepositoryImplement extends TaskRepository{

  final  TaskDatasource taskRepository;

  TaskRepositoryImplement(this.taskRepository);
    
  @override
  Future createTasks(ModelTask data) async {
    final task= await taskRepository.createTasks(data);
    return task.fold((l) => l,(r) => r );

  }

  @override
  Future getAllTasks() async{
      final tasks= await taskRepository.getAllTasks();
      return tasks.fold( (l)=>l,(r)=>r );
    
  }  

  @override
  Future updateTasks(ModelTask data)async{
      final task = await taskRepository.updateTasks(data); 
      return task.fold( (l)=>l,(r)=>null);
  }

  @override
  Future deleteTasks(String id) async{
      final task = await taskRepository.deleteTasks(id); 
      return task.fold((l)=>l,(r)=>null);

  }

  @override
  Future  getTask(String id) async{
    final task = await taskRepository.getTask(id); 
    return task.fold((l)=>l,(r)=>null);
  }


}