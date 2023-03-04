import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  //lista de elementos
  final options = const [
    'Azul',
    'Rojo',
    'Amarillo',
    'Verde',
    'Prupura',
    'Gris',
    'Magenta',
    'Rosado',
    'Negro',
    'Blanco',
    'Tomato'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.lightGreenAccent[700],
          title: const Text('ListView 2'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.lightGreenAccent,
            ),
            onTap: () {
              final colores = options[index];
              print(colores);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}