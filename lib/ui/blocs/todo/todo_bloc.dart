import 'package:flutter_application/ui/blocs/todo/todo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../data/repositories/base_repository_impl.dart';

class TodoBloc extends Cubit<TodoState> {
  final BaseRepositoryImpl _baseRepositoryImpl = GetIt.instance.get();
  TodoBloc() : super(const TodoState.loading());

  Future initData() async {
    await clear();
    final data = await _baseRepositoryImpl.getListTodos();
    emit(TodoState(data));
  }

  Future clear() async {
    emit(const TodoState.loading());
  }
}
