import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/presentacion/presentacion.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            const Image(
                image: NetworkImage(
                    'https://img.freepik.com/foto-gratis/salida-sol-sobre-selva-bali_1385-1644.jpg?w=1060&t=st=1679931106~exp=1679931706~hmac=10c70137635190aa30f5e457fe4eda2c795acfa56568f4de0acf40c8a50465a1')),
            const ContainerDrawer(),
            Container(
              margin: const EdgeInsets.only(top: 150),
              child: const Opciones(),
            )
          ],
        ),
      ),
      body: const Containertask(),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _displayDialog(context),
          child: const Icon(Icons.note_add)),
    );
  }

  Future _displayDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("REGISTRO TODO KERLY", textAlign: TextAlign.center),
            content: const FormsPopUP(),
            actions: [
              TextButton(
                child: const Text('ADD'),
                onPressed: () async{
                  final formspoup = context.read<PopUpForms>();
                  final home = context.read<Getall>();
                  await formspoup.save();
                  if (formspoup.estado) {
                    formspoup.clearform();
                  await home.data();
                  Navigator.of(context).pop();
                  }

                },
              ),
              TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {                    
                    final formspoup = context.read<PopUpForms>();
                    formspoup.clearform();
                    Navigator.of(context).pop();

                  }),
            ],
          );
        });
  }
}
