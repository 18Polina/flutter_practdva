import 'package:flutter_practdva/domain/entity/post_entity.dart';

class  PersonalEntity
{
  late int id;
  final String surname;
  final String name;
  final String middlename;
  final String birthday;
  final String snils;
  final String seriapasport;
  final String nomerpasport;
  final String salary;
  final PostEntity id_post;


  PersonalEntity
  (
{
  this.id = 0,
  required this.surname,
   required this.name,
    required this.middlename,
     required this.birthday,
      required this.snils,
       required this.seriapasport,
        required this.nomerpasport,
         required this.salary,
          required this.id_post, 
}
  );
}