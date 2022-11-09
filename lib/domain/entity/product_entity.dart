import 'package:flutter_practdva/domain/entity/producttype_entity.dart';
import 'package:flutter_practdva/domain/entity/proizvod_entity.dart';

class  ProductEntity
{
  late int id;
  final String name;
  final ProducttypeEntity id_type;
    final ProizvodEntity id_city;


  ProductEntity
  (
{
  this.id = 0,
  required this.name,
  required this.id_type, 
  required this.id_city, 
}
  );
}