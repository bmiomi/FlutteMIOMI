import 'package:todo/data/models/task_model.dart';
import 'package:todo/domain/repositories/taskrepository.dart';

abstract class CreateTask {

  Future create(ModelTask task);

}

class CreateTaskimplent implements CreateTask{

  final TaskRepository taskrepositori;

  CreateTaskimplent({ required this.taskrepositori });
  
  @override
  Future create(ModelTask tasktodo ) async{
      return await taskrepositori.createTasks( tasktodo);
  }


}
