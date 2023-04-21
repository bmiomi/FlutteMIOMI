import 'package:flutter/material.dart';

class Opciones extends StatelessWidget {

const Opciones({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) =>  ListTile(
        title:    const Text('dato uno'),
        subtitle: const Text('is subtitle'),
        leading: const Icon(Icons.person_sharp),
        onTap: () { },
        ));
  }
}