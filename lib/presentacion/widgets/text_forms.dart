import 'package:flutter/material.dart';

class TextForms extends StatelessWidget {

final String texto;
final int? maxline;
final TextEditingController controller;
 const TextForms({ Key? key,
    required this.controller,
    required this.texto,
    this.maxline
 }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TextFormField(
        controller: controller,
        decoration:InputDecoration(label: Text(texto)),
        maxLines: maxline,
        validator: (value) {
          if  (value!.isEmpty){ 
              return 'Error: No se ha ingresado valores';
          }
        return  null;
      }
    );      
  }
}