import 'package:hive/hive.dart';
part 'todo.g.dart';

@HiveType(typeId: 0)
class Todo extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  bool complete;
  @HiveField(2)
  String Data;
  @HiveField(3)
  String Summa;

  Todo({this.complete = false, this.Data = '', this.Summa});
}
