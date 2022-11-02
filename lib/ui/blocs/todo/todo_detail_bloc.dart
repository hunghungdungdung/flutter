import 'package:flutter_application/ui/blocs/todo/todo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../data/repositories/base_repository_impl.dart';
import 'todo_detail_state.dart';

class TodoDetailBloc extends Cubit<TodoDetailState> {
  final BaseRepositoryImpl _baseRepositoryImpl = GetIt.instance.get();
  TodoDetailBloc() : super(const TodoDetailState.loading());

  Future initData(int id) async {
    await clear();
    final data = await _baseRepositoryImpl.getTodoDetail(id);
    emit(TodoDetailState(data));
  }

  Future clear() async {
    emit(const TodoDetailState.loading());
  }
}
