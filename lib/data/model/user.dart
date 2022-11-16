import 'package:second_practical/domain/entity/user_entity.dart';

class User extends UserEntity {
  User({required super.login, required super.password, required super.role});

  Map<String, dynamic> toMap() {
    return {
      'naloginme': login,
      'password': password,
      'role': role,
    };
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      login: json['login'],
      password: json['password'],
      role: json['role'],
    );
  }
}
