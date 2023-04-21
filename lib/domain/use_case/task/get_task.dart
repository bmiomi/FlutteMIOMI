import 'package:dartz/dartz.dart';
import 'package:todo/core/error/failures.dart';
import 'package:todo/data/models/task_model.dart';
import 'package:todo/domain/repositories/taskrepository.dart';

abstract class GetTask {

  Future<Either<Failure, ModelTask>> execute(String id);

}

class CreateTaskimplent implements GetTask{

  final TaskRepository taskrepositori;

  CreateTaskimplent({ required this.taskrepositori });

  @override
  Future<Either<Failure, ModelTask>> execute( String id) async{
    
     return await taskrepositori.getTask(id);


  }


}
