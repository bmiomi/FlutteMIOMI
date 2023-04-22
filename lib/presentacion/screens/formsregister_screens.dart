import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/presentacion/provider/popupforms.dart';
import 'package:todo/presentacion/widgets/text_forms.dart';

class FormsPopUP extends StatelessWidget {

  const FormsPopUP({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final popupforms=Provider.of<PopUpForms>(context);
    return Form(
      key: popupforms.formkey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [      
      TextForms(
        controller: popupforms.controller,
        texto:'Ingresa un titulo'
        ),

      TextForms(
        controller: popupforms.controller1,
        maxline: 5,
        texto:'Ingresa una breve descripcion',
        ),

      TextFormField(
        controller: popupforms.controller2,
        readOnly: true,
        onTap: () async { 
          final datapick=await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1995), 
                lastDate: DateTime(2024)
              );
          popupforms.controller2.text= datapick.toString();
          },        
        decoration:const InputDecoration(label: Text('Inicio Tarea'),
        suffixIcon: Icon(Icons.calendar_month_outlined),
        )
        ),

      TextFormField(
        controller: popupforms.controller3,
        readOnly: true,
        onTap: () async{
          final datapick=await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1995), 
                lastDate: DateTime(2024) 
              );

          popupforms.controller3.text=  datapick.toString();

        },
        decoration:const InputDecoration(
          label: Text('Fin tarea'),
          suffixIcon: Icon(Icons.calendar_month_outlined),
          ),          
         validator: (value) => DateTime.parse(popupforms.controller2.text).isAfter( DateTime.parse(popupforms.controller3.text) )? 'Error: Fecha inicio no debe ser inferior a fecha fin':null,        
        ),
    ]
  
    ));
  }
}