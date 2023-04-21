import 'package:flutter/material.dart';

class ContainerDrawer extends StatelessWidget {

const ContainerDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
      ClipOval(     
        child:  Padding(
          padding: const EdgeInsets.only(top:60.0),
          child: Image.network(
            ('https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),
            width: 80,
            height: 80,
      ))),
      const SizedBox(height: 10,),
      const Text('Name Person' ,style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic,color: Colors.white),),
      const Text('CorreoPerson',style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic,color: Colors.white),)
    ]);
  }
}