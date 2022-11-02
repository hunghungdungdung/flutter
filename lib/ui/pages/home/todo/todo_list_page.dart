import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/todo/todo_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/todo/todo_state.dart';

class TodoListPage extends StatefulWidget {
  static const path = "/todo-list";
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  void initState() {
    super.initState();
    context.read<TodoBloc>().initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          return state.when((data) {
            return ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black.withOpacity(0.5),
                    )),
                    child: Row(
                      children: [
                        Text(data[index].title ?? ""),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 16,
                  );
                },
                itemCount: data.length);
          }, loading: () {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }, error: (error) {
            return const Center(
              child: Text("Data Error"),
            );
          });
        },
      ),
    );
  }
}
