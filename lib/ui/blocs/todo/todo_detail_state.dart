import 'package:flutter_application/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_detail_state.freezed.dart';

@freezed
abstract class TodoDetailState with _$TodoDetailState {
  const factory TodoDetailState(TodoModel data) = TodoDetailStateData;
  const factory TodoDetailState.loading() = TodoDetailStateLoading;
  const factory TodoDetailState.error(dynamic error) = TodoDetailStateError;
}