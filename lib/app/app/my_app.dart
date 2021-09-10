import 'package:flutter/material.dart';
import 'package:primeiro_app/app/app/view/cliente_list.dart';
import 'package:primeiro_app/app/app/view/home_page.dart';
import 'package:primeiro_app/app/app/view/list.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const HOME = '/';
  static const LISTACLIENTES = 'Lista_Cliente';
  static const CADASTRO = 'Cadastro';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ordem de Servico',
      theme: ThemeData(primarySwatch: Colors.red),
      routes: {
        HOME: (context) => HomePage(),
        LISTACLIENTES: (context) => ListClient(),
        CADASTRO: (context) => CadastroCliente()
      },
    );
  }
}
