import 'package:flutter/material.dart';
import 'package:primeiro_app/app/app/database/conection.dart';
import 'package:sqflite/sqflite.dart';

class ListClient extends StatelessWidget {
  Future<List<Map<String, dynamic>>> _buscar() async {
    Database? db = await Connection.get();
    return db!.query('Clients');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _buscar(),
        builder: (context, futuro) {
          if (futuro.hasData) {
            dynamic lista = futuro.data;
            return Scaffold(
              appBar: AppBar(
                title: Text('Lista de Clientes'),
              ),
              body: ListView.builder(
                itemCount: lista,
                itemBuilder: (context, i) {
                  Map contato = lista[i];
                  var avatar = CircleAvatar(
                    backgroundImage: NetworkImage(contato['url_avatar']),
                  );
                  return ListTile(
                    leading: avatar,
                    title: Text(contato['nome']),
                    subtitle: Text(contato['telefone']),
                    trailing: Container(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.edit)),
                          IconButton(onPressed: null, icon: Icon(Icons.delete))
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return Scaffold();
          }
        });
  }
}
