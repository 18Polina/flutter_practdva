import 'package:flutter_practdva/domain/entity/role_entity.dart';

class  UserEntitiy
{
  late int id;
  final String login;
  final String password;
  final RoleEnum idRole;


  UserEntitiy
  (
{
  this.id = 0,
  required this.login,
  this.password = '',
  required this.idRole, 
}
  );
}