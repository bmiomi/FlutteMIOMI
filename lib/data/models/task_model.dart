import 'dart:convert';
import 'package:todo/domain/entities/task.dart';

ModelTask modelTaskFromJson(String str)=>ModelTask.fromJson(json.decode(str));
 
String modelTaskToJson( ModelTask data )=>json.encode(data.toJson());

class ModelTask extends Tasktodo{

  ModelTask({ 
  required nombretarea, 
  required descripcion,
  required fechainicio, 
  required fechafin
  }):super(
    nombretarea:nombretarea,
    descripcion:descripcion,
    fechainicio:fechafin,
    fechafin:fechafin);

  factory ModelTask.fromJson(Map<String,dynamic> json)=>ModelTask(    
    nombretarea:json["nombretarea"], 
    descripcion:json["descripcion"], 
    fechainicio:json["fechainicio"], 
    fechafin:json["fechafin"]
    );

  Map<String,dynamic> toJson()=>{
    "nombretarea":nombretarea,
    "descripcion":descripcion,
    "fechainicio":fechainicio,
    "fechafin":fechafin,
  };

}
