import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class ServicesDatabase{

  Database? _database;

  static final ServicesDatabase dbs= ServicesDatabase._();

  ServicesDatabase._();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }  

  Future<Database> initDB() async {
    final dbpath = await getDatabasesPath();
    final path = p.join(dbpath, 'task.db');

   return await openDatabase(
      path,
      onCreate: (db, version) async=>  await db.execute(
        """
      CREATE TABLE TASK (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nombretarea TEXT ,
        descripcion TEXT ,
        fechainicio TEXT ,
        fechafin TEXT
      );
      """),
      version: 1,
      onOpen: (db) => {print('has abierto la base de datos')},
    );

  }


}

