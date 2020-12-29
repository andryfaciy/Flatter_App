import 'package:hive/hive.dart';
part 'doing.g.dart';

@HiveType(typeId: 0)
class Doing extends HiveObject {
  @HiveField(0)
  String id1;
  @HiveField(1)
  bool complete1;
  @HiveField(2)
  String Nazvanie;
  @HiveField(3)
  String Summa1;

  Doing({this.complete1 = false, this.Nazvanie = '', this.Summa1});
}