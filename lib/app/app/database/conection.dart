import 'package:path/path.dart';
import 'package:primeiro_app/app/app/database/script.dart';
import 'package:sqflite/sqflite.dart';

class Connection {
  static Database? _db;

  static Future<Database?> get() async {
    if (_db == null) {
      var path = join(await getDatabasesPath(), 'banco_clientes');
      _db = await openDatabase(path, version: 1, onCreate: (db, v) {
        db.execute(CreateTable);
        db.execute(insert);
      });
    }
    return _db;
  }
}
