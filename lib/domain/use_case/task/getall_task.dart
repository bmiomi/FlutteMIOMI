import 'package:todo/domain/repositories/taskrepository.dart';

// La interface esta  creada para poder testear el caso de uso

abstract class GetAllTask {
  Future execute();

}


class GetTaskimplent implements GetAllTask{

  final TaskRepository taskRepository;

  GetTaskimplent({ required this.taskRepository });

  @override
  Future execute() async{
      return taskRepository.getAllTasks();
  }


}