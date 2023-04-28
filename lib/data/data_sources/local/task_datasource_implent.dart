import 'package:todo/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:todo/data/models/task_model.dart';
import 'package:todo/data/services/sqflitemodel.dart';
import 'package:todo/domain/entities/task.dart';


class TaskDatasource {

  ServicesDatabase servicesDatabase =ServicesDatabase.dbs;

  Future<Either<Failure, int>> createTasks(ModelTask data) async {
    final db = await servicesDatabase.database;
    try {
      final value=await db.insert('task', data.toJson());
      return right(value);
    } catch (e) {
      return left(ServerFailure(mensaje: e.toString()));
    }
  }

  Future<Either<Failure, List<ModelTask>>> getAllTasks() async {
    try {
      final db = await servicesDatabase.database;
      var map = await db.query('TASK');
        return right(map.map((e) => ModelTask.fromJson(e)).toList());
      } catch (e) {
        return left(ServerFailure(mensaje: 'se detecto un error '));      
    }

  }

  
  Future<Either<Failure, ModelTask>> getTask(String id) {
    throw UnimplementedError();
  }

  Future<Either<Failure, Tasktodo>> updateTasks(ModelTask data) {
    throw UnimplementedError();
  }

  Future<Either<Failure, Tasktodo>> deleteTasks(String id) {
    throw UnimplementedError();
  }
}
