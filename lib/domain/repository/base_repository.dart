import '../domain.dart';

abstract class BaseRepository {
  Future<List<TodoModel>> getListTodos();
  Future<TodoModel> getTodoDetail(int id);
}