import 'package:isar/isar.dart';

part 'user.g.dart';

@Collection()
class User {
  Id id = Isar.autoIncrement;
  late String name;
  late String username;
  late String password;
  Password? saves;
}

@Embedded()
class Password {
  late String name;
  late String login;
  late String password;
  late String type;
  String? note;
}