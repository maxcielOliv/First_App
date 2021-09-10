import 'package:flutter/material.dart';

class CadastroCliente extends StatefulWidget {
  const CadastroCliente({Key? key}) : super(key: key);

  @override
  _CadastroClienteState createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Cliente'),
      ),
    );
  }
}
