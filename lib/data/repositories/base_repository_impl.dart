import 'package:flutter_application/domain/entity/todo_model.dart';

import '../../domain/repository/base_repository.dart';
import '../data.dart';

class BaseRepositoryImpl implements BaseRepository {
  BaseApiService baseApiService = BaseApiService();

  @override
  Future<List<TodoModel>> getListTodos() {
    return baseApiService.getListTodos();
  }

  @override
  Future<TodoModel> getTodoDetail(int id) {
    return baseApiService.getTodoDetail(id);
  }

}