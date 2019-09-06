import 'package:meta/meta.dart';

class Model {
  final int id;
  final Map data;

  const Model({
    @required this.id,
    this.data = const {},
  });
}

abstract class Repository {
  Model create();

  List<Model> getAll();

  Model get(int id);

  void update(Model item);

  void delete(Model item);

  void clear();
}