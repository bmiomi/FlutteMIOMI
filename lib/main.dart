import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/core/dependency/dependency.dart';
import "package:todo/domain/domain.dart";
import 'package:todo/presentacion/presentacion.dart';

void main() {
  setup();
  runApp(const StateApp());
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<PopUpForms>(
        create: (context) => PopUpForms( createTask: getIt.get<CreateTask>()),
      ),
      ChangeNotifierProvider<Getall>(
        create: (context) => Getall( getAllTask: getIt.get<GetAllTask>() ),
      )
    ], child: const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(title: 'TODO LIST-KERLY'),
    );
  }
}
