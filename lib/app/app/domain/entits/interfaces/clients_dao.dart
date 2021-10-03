import 'package:primeiro_app/app/app/domain/Clients.dart';

abstract class ClientsDao {
  save(Clients clients);

  remove(int id);

  Future<List<Clients>> find();
}
