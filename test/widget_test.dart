import 'package:flutter_test/flutter_test.dart';

import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:todo/data/data.dart';

void main() {

  TestWidgetsFlutterBinding.ensureInitialized();

  late  TaskRepositoryImplement taskRepositoryImplement;

  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  setUp(() {
    taskRepositoryImplement=TaskRepositoryImplement(TaskDatasource());
  });

  test('validar forms', () async {
    final result=await taskRepositoryImplement.createTasks(
      ModelTask(
          nombretarea: 'tarea de ejemplo', 
          descripcion: 'descripcion de tarea', 
          fechainicio: '2022-05-20', 
          fechafin: '2022-05-29'));
    expect(result
      ,isA<int>());
  });

}