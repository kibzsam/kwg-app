// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PostData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostData _$PostDataFromJson(Map<String, dynamic> json) {
  return PostData(
    json['id'] as int,
    json['postId'] as int,
    json['name'] as String,
    json['email'] as String,
    json['body'] as String,
  );
}

Map<String, dynamic> _$PostDataToJson(PostData instance) => <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
