import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  //lista de elementos
  final options = const [
    'Azul',
    'Rojo',
    'Amarillo',
    'Verde',
    'Prupura',
    'Gris',
    'Magenta'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),
        body: ListView(
          children: [
            ...options
                .map((data) => ListTile(
                      leading: const Icon(Icons.ad_units),
                      title: Text(data),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ))
                .toList(),
          ],
        ));
  }
}
