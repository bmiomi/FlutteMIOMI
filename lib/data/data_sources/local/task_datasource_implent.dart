import 'package:todo/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:todo/data/models/task_model.dart';
import 'package:todo/data/services/sqflitemodel.dart';
import 'package:todo/domain/entities/task.dart';

abstract class Datasource {

  Future <Either<Failure, List<ModelTask>>> getAllTasks();
  Future <Either<Failure, ModelTask>> getTask(String id);
  Future <Either<Failure, int>>  createTasks(ModelTask data);
  Future <Either<Failure, Tasktodo>> updateTasks(ModelTask data);
  Future <Either<Failure, Tasktodo>>   deleteTasks(String id);
 
}


class TaskDatasource extends Datasource{

  @override
  Future<Either<Failure, int>> createTasks(ModelTask data) async {
    final db = await ServicesDatabase.dbs.database;
    try {
      final value=await db.insert('task', data.toJson());
      return right(value);
    } catch (e) {
      return left(ServerFailure(mensaje: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ModelTask>>> getAllTasks() async {
    try {
      final db = await ServicesDatabase.dbs.database;
      var map = await db.query('TASK');
        return right(map.map((e) => ModelTask.fromJson(e)).toList());
      } catch (e) {
        return left(ServerFailure(mensaje: 'se detecto un error '));      
    }

  }

  
  @override
  Future<Either<Failure, ModelTask>> getTask(String id) {
    // TODO: implement getTask
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Tasktodo>> updateTasks(ModelTask data) {
    // TODO: implement updateTasks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Tasktodo>> deleteTasks(String id) {
    // TODO: implement deleteTasks
    throw UnimplementedError();
  }
}
