import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/todo/todo_detail_bloc.dart';
import 'package:flutter_application/ui/blocs/todo/todo_detail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/image_preview_widget.dart';

class TodoDetailPage extends StatefulWidget {
  static const path = 'todo-detail';
  final int todoId;
  const TodoDetailPage({Key? key, required this.todoId}) : super(key: key);

  @override
  State<TodoDetailPage> createState() => _TodoDetailPageState();
}

class _TodoDetailPageState extends State<TodoDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<TodoDetailBloc>().initData(widget.todoId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Detail"),
      ),
      body: BlocBuilder<TodoDetailBloc, TodoDetailState>(
        builder: (context, state) {
          return state.when(
              (data) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          data.title ?? "",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(data.content ?? ""),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Text(
                        "Hình ảnh",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImagePreviewWidget(
                                url: data.imageUrl ?? "",
                              ),
                            ),
                          );
                        },
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.network(
                              data.imageUrl ?? "",
                              errorBuilder: (context, _, __) {
                                return const Icon(
                                  Icons.error,
                                  color: Colors.redAccent,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              loading: () => const Center(
                    child: CupertinoActivityIndicator(),
                  ),
              error: (error) {
                return const Center(
                  child: Text("Data Error"),
                );
              });
        },
      ),
    );
  }
}
