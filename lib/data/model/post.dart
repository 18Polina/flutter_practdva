import 'package:flutter_practdva/domain/entity/post_entity.dart';

class Post  extends PostEntity
{
  Post({required super.post});

  Map<String,dynamic> toMap()
  {
    return{
      'post':post,
    };
  }
}