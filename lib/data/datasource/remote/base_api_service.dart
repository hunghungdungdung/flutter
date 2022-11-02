import 'dart:io';

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

  Future addNote(TodoDto? todoDto) async {
    try {
      final response = await client.from("todo").insert({
        'title': todoDto?.title,
        'content': todoDto?.content,
        'imageUrl': todoDto?.imageUrl,
      });
      developer.log("addNoteLog ${response}", name: 'addNote');
    } catch (error) {
      rethrow;
    }
  }

  Future editNote(TodoDto? todoDto) async {
    try {
      final response = await client.from("todo").update({
        'title': todoDto?.title,
        'content': todoDto?.content,
        'imageUrl': todoDto?.imageUrl,
      }).match({'id': todoDto?.id});
      developer.log("addNoteLog ${response}", name: 'addNote');
    } catch (error) {
      rethrow;
    }
  }

  Future deleteNote(int id) async {
    try {
      final response = await client.from("todo").delete().match({'id': id});
      developer.log("addNoteLog ${response}", name: 'addNote');
    } catch (error) {
      rethrow;
    }
  }

  Future<String> uploadImage(String name, File file) async {
    try {
      final response = await client.storage.from("assets").upload(name, file,
          fileOptions: const FileOptions(
            cacheControl: '3600',
            upsert: true,
          ));
      developer.log("uploadImageLog $response", name: 'uploadImage');
      // client.storage.from("assets").
      final publicUrl = client.storage.from("assets").getPublicUrl(name);
      developer.log("uploadImageLog $publicUrl", name: 'uploadImage');
      return publicUrl;
    } catch (error) {
      rethrow;
    }
  }
}
