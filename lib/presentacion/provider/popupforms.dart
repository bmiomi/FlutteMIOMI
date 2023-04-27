import 'package:flutter/material.dart';
import 'package:todo/data/data.dart';
import 'package:todo/domain/use_case/task/create_task.dart';

class PopUpForms extends ChangeNotifier {

  static bool _estado = false;

  PopUpForms({required this.createTask});


  final CreateTask createTask;
  final _formKey = GlobalKey<FormState>();

  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  get formkey => _formKey;
  get estado => _estado;

 Future<void>save() async {

    if (_formKey.currentState!.validate()) {
      await createTask.create(ModelTask(
          nombretarea: controller.text,
          descripcion: controller1.text,
          fechainicio: controller2.text,
          fechafin: controller3.text));
      _estado = true;
      
    }
  }

 clearform(){
    controller.clear();
    controller1.clear();
    controller2.clear();
    controller3.clear();
  }



}
