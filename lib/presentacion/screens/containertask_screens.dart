import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:todo/presentacion/provider/getalltask.dart';

class Containertask extends StatelessWidget {
  const Containertask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = context.watch<Getall>();
    return FutureBuilder(
      future: data.getAllTask.execute(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) {
          return const Center(child: Text('No hay data'));
        }
        if (snapshot.data.isEmpty) {
          return Container(
            
            child: Lottie.asset('assets/no-data.json'),
          );
        }
        return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return Dismissible(
                onDismissed: (direction) {
                    data.delete(index);
                },
                key: Key(snapshot.data[index].nombretarea),
                background: Container(
                  color: Colors.red,
                  child: const Icon(Icons.delete_forever_outlined),
                ),
                child: ListTile(
                  title: Text(snapshot.data[index].nombretarea),
                  subtitle: Text(snapshot.data[index].descripcion),
                  onTap: () {},
                ),
              );
            });
      },
    );
  }
}
