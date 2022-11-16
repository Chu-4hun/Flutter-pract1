import 'package:second_practical/data/model/role.dart';

class UserEntity {
  late int id;
  final String login;
  final String password;
  final Role role;

  UserEntity({
    required this.login,
    required this.password,
    required this.role,
  });
}
