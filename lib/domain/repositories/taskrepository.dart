import 'package:todo/data/models/task_model.dart';

abstract class TaskRepository {

  Future  getAllTasks();
  Future  getTask(String id);
  Future  createTasks(ModelTask data);
  Future  updateTasks(ModelTask data);
  Future  deleteTasks(String id);
  
}