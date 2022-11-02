import '../domain.dart';

abstract class BaseRepository {
  Future<List<TodoModel>> getListTodos();
}