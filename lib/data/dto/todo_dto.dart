import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/todo_model.dart';

part 'todo_dto.g.dart';

@JsonSerializable()
class TodoDto implements TodoModel {
  factory TodoDto.fromJson(Map<String, dynamic> json) =>
      _$TodoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TodoDtoToJson(this);

  @override
  int? id;

  @override
  String? content;

  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;

  @override
  String? imageUrl;

  @override
  String? title;

  TodoDto({this.id, this.content, this.createdAt, this.imageUrl, this.title});
}
