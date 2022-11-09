import 'package:flutter_practdva/domain/entity/producttype_entity.dart';

class Producttype  extends ProducttypeEntity
{
  Producttype({required super.type});

  Map<String,dynamic> toMap()
  {
    return{
      'type':type,
    };
  }
}