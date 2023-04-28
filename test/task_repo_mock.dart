import 'package:flutter/material.dart';
import 'package:mockito/mockito.dart';
import 'package:todo/data/data_sources/local/task_datasource_implent.dart';
import 'package:todo/data/repo_implement/task_repo_implement_db.dart';
import 'package:todo/domain/domain.dart';
import 'package:todo/presentacion/provider/popupforms.dart';

class MockTaskRepository extends Mock implements TaskRepositoryImplement{

  @override
  TaskDatasource taskRepository;
  
  MockTaskRepository({ required this.taskRepository});

}

class MocktaskRepository extends Mock  implements GetTaskimplent{
}


class MockTokenProvider extends Mock implements PopUpForms {

  @override
  TextEditingController controller = TextEditingController();
  @override
  TextEditingController controller1 = TextEditingController();
  @override
  TextEditingController controller2 = TextEditingController();
  @override
  TextEditingController controller3 = TextEditingController();

}