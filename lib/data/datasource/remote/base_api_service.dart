import 'package:dio/dio.dart';
import 'package:flutter_application/data/data.dart';
import 'package:flutter_application/domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:developer' as developer;

final client = Supabase.instance.client;

class BaseApiService {
  Dio dio = GetIt.instance.get();

  Future<List<TodoModel>> getListTodos() async {
    try {
      final response = await client.from("todo").select();
      developer.log('getListTodosLog ${response}', name: '');
      final todos = (response as List).map((e) => TodoDto.fromJson(e)).toList();
      return todos;
    } catch (error) {
      rethrow;
    }
  }

  Future addNote() async {

  }

  Future<TodoModel> getTodoDetail(int id) async {
    try {
      final response = await client.from("todo").select().eq('id', id);
      developer.log('getTodoDetailLog ${response[0]}', name: 'getTodoDetail');
      final todo = TodoDto.fromJson(response[0]);
      return todo;
    } catch (error) {
      rethrow;
    }
  }
}
