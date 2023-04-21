import 'package:get_it/get_it.dart';
import 'package:todo/data/data.dart';
import 'package:todo/domain/use_case/task/create_task.dart';
import 'package:todo/domain/use_case/task/getall_task.dart';


final getIt = GetIt.instance;

void setup() {

  getIt.registerSingleton<CreateTask>(CreateTaskimplent(taskrepositori: 
    TaskRepositoryImplement( 
      TaskDatasource()
    )
    ));

  getIt.registerSingleton<GetAllTask>( GetTaskimplent (taskRepository:  
    TaskRepositoryImplement( 
      TaskDatasource()
    )
    ));



}
