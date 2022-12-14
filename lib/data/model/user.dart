import 'package:flutter_practdva/domain/entity/role_entity.dart';
import 'package:flutter_practdva/domain/entity/user_entity.dart';

class User extends UserEntitiy {
final String password;
User(
 {
  super.id = 0,
  required super.login,
  required super.idRole,
 required this.password,
}
);


Map<String,dynamic> toMap()
{
  return{
    'login':login,
    'password': password,
    'id_role' : idRole.id
  };
}


factory User.toFromMap(Map<String,dynamic>json)
{
  return User(
   id: json['id'] as int,
     login: json['login'], 
     idRole: RoleEnum.values.firstWhere((element) => element.id ==
     (json['id_role'] as int)),
      password: json['password'],
      );
}
}