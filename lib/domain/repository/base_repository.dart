import 'dart:io';

import '../../data/data.dart';
import '../domain.dart';

abstract class BaseRepository {
  Future<List<TodoModel>> getListTodos();
  Future<TodoModel> getTodoDetail(int id);
  Future addNote(TodoDto? todoDto);
  Future editNote(TodoDto? todoDto);
  Future deleteNote(int id);
  Future<String> uploadImage(String name, File file);
}
