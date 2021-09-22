import 'package:flutter/material.dart';

class ListClient extends StatelessWidget {
  final lista = [
    {
      'nome': 'Maxciel',
      'telefone': '093992113930',
      'avatar':
          'https://cdn.pixabay.com/photo/2021/09/07/16/38/man-6604399_960_720.png'
    },
    {
      'nome': 'Also',
      'telefone': '093991394050',
      'avatar':
          'https://cdn.pixabay.com/photo/2021/09/11/15/46/witch-6615914_960_720.png'
    },
    {
      'nome': 'Marta',
      'telefone': '093991405032',
      'avatar':
          'https://cdn.pixabay.com/photo/2021/08/23/07/16/woman-6566919_960_720.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Clientes'),
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i) {
          Map contato = lista[i];
          var avatar = CircleAvatar(
            backgroundImage: NetworkImage(contato['avatar']),
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
  }
}
