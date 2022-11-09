import 'package:flutter_practdva/domain/entity/klient_entity.dart';

class Klient extends KlientEntity {
Klient(
 {
  super.id = 0,
  required super.surname,
  required super.name,
  required super.middlename,
  required super.birthday,
}
);


Map<String,dynamic> toMap()
{
  return{
    'surname':surname,
    'name': name,
    'middlename':middlename,
    'birthday': birthday
  };
}
}