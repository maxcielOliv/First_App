import 'package:primeiro_app/app/app/database/conection.dart';
import 'package:primeiro_app/app/app/domain/Clients.dart';
import 'package:primeiro_app/app/app/domain/entits/interfaces/clients_dao.dart';
import 'package:sqflite/sqflite.dart';

class ClientsDaoImpl implements ClientsDao {
  Database? _db;

  @override
  Future<List<Clients>> find() async {
    _db = await Connection.get();
    List<Map<String, dynamic>> resultado = await _db!.query('clientes');
    List<Clients> lista = List.generate(resultado.length, (i) {
      var linha = resultado[i];
      return Clients(
          id: linha['id'],
          nome: linha['nome'],
          telefone: linha['telefone'],
          email: linha['email'],
          urlAvatar: linha['urlAvatar']);
    });
    return lista;
  }

  @override
  remove(int id) async {
    _db = await Connection.get();
    var sql = 'DELETE FROM clientes WHERE id = ?';
    _db!.rawDelete(sql, [id]);
  }

  @override
  save(Clients clients) async {
    _db = await Connection.get();
    var sql;
    if (clients.id == null) {
      sql =
          'INSERT INTO clientes(nome, telefone, email, urlAvatar)VALUES(?,?,?,?)';
      _db!.rawInsert(sql,
          [clients.nome, clients.telefone, clients.email, clients.urlAvatar]);
    } else {
      sql =
          'UPDATE clientes SET nome = ?, telefone = ?, email = ?, urlAvatar = ? WHERE id = ?';
      _db!.rawUpdate(sql, [
        clients.nome,
        clients.telefone,
        clients.email,
        clients.urlAvatar,
        clients.id
      ]);
    }
  }
}
