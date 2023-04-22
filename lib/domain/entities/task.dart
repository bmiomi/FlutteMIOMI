import 'package:equatable/equatable.dart';

class Tasktodo  extends Equatable{

  final String nombretarea;
  final String descripcion;
  final String fechainicio;
  final String fechafin;

  const Tasktodo({
    required this.nombretarea, 
    required this.descripcion, 
    required this.fechainicio, 
    required this.fechafin});
    
      @override
      List<Object?> get props => [
        nombretarea,
        descripcion,
        fechainicio,
        fechafin
      ];

}