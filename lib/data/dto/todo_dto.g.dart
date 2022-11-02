// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoDto _$TodoDtoFromJson(Map<String, dynamic> json) => TodoDto(
      id: json['id'] as int?,
      content: json['content'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$TodoDtoToJson(TodoDto instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'created_at': instance.createdAt?.toIso8601String(),
      'imageUrl': instance.imageUrl,
      'title': instance.title,
    };
