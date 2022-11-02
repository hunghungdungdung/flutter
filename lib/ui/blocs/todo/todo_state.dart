import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';

part 'todo_state.freezed.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState(List<TodoModel> data) = TodoStateData;
  const factory TodoState.loading() = TodoStateLoading;
  const factory TodoState.error(dynamic error) = TodoStateError;
}
