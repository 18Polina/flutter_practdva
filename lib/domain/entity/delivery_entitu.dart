import 'package:flutter_practdva/domain/entity/post_entity.dart';

class  DeliveryEntity
{
  late int id;
  final String address;
  final String data;
  final String salary;
  final PostEntity id_personal;
  final PostEntity id_klient;
  final PostEntity id_product;


  DeliveryEntity
  (
{
  this.id = 0,
  required this.address,
   required this.data,
    required this.salary,
    required this.id_personal, 
    required this.id_klient, 
          required this.id_product, 
}
  );
}