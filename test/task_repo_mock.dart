import 'package:flutter/material.dart';
import 'package:todo/domain/repositories/taskrepository.dart';
import 'package:mockito/mockito.dart';
import 'package:todo/presentacion/provider/popupforms.dart';

class MocktaskRepository extends Mock  implements TaskRepository{

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