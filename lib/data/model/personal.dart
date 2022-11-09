import 'package:flutter_practdva/domain/entity/personal_entity.dart';

class Personal extends PersonalEntity {
Personal(
 {
  super.id = 0,
  required super.surname,
  required super.name,
  required super.middlename,
  required super.birthday,
  required super.snils,
  required super.seriapasport,
  required super.nomerpasport,
  required super.salary,
  required super.id_post,
}
);


Map<String,dynamic> toMap()
{
  return{
    'surname':surname,
    'name': name,
    'middlename':middlename,
    'birthday': birthday,
    'snils':snils,
    'seriapasport': seriapasport,
    'nomerpasport':nomerpasport,
    'salary': salary,
    'id_post' : id_post.id
  };
}
}