import 'package:flutter_practdva/domain/entity/producttype_entity.dart';
import 'package:flutter_practdva/domain/entity/proizvod_entity.dart';

class Proizvod  extends ProizvodEntity
{
  Proizvod({required super.city});

  Map<String,dynamic> toMap()
  {
    return{
      'city':city,
    };
  }
}