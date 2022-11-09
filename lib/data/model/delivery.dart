import 'package:flutter_practdva/domain/entity/delivery_entitu.dart';

class Delivery extends DeliveryEntity {
Delivery(
 {
  super.id = 0,
  required super.address,
  required super.data,
  required super.salary,
   required super.id_personal,
    required super.id_klient,
  required super.id_product,
}
);


Map<String,dynamic> toMap()
{
  return{
    'address':address,
    'data': data,
    'salary':salary,
    'id_personal' : id_personal.id,
    'id_klient' : id_klient.id,
    'id_product' : id_product.id
  };
}
}