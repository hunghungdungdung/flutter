import 'dart:io';

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

  @override
  Future addNote(TodoDto? todoDto) {
    return baseApiService.addNote(todoDto);
  }

  @override
  Future deleteNote(int id) {
    return baseApiService.deleteNote(id);
  }

  @override
  Future editNote(TodoDto? todoDto) {
    return baseApiService.editNote(todoDto);
  }

  @override
  Future<String> uploadImage(String name, File file) {
    return baseApiService.uploadImage(name, file);
  }
}
