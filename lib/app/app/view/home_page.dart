import 'package:flutter/material.dart';
import 'package:primeiro_app/app/app/my_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ordem de Servico'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyApp.LISTACLIENTES);
              },
              icon: Icon(Icons.add))
        ],
      ),
    );
  }
}
