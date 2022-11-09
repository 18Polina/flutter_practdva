import 'package:flutter_practdva/domain/entity/product_entity.dart';


class Product extends ProductEntity {
Product(
 {
  super.id = 0,
  required super.name,
  required super.id_type,
  required super.id_city,
}
);


Map<String,dynamic> toMap()
{
  return{
    'name':name,
    'id_type' : id_type.id,
    'id_city' : id_city.id
  };
}
}