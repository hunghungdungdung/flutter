import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/data/repositories/base_repository_impl.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/blocs/todo/todo_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../data/data.dart';
import '../../../../domain/domain.dart';

class AddTodoPage extends StatefulWidget {
  static const path = "/add-todo";
  final int? id;
  const AddTodoPage({Key? key, this.id}) : super(key: key);

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  Map<String, String>? imageResult;
  String? imageUrl;
  late TodoDto todoDto;

  @override
  void initState() {
    super.initState();
    if (widget.id != null) {
      initTodo();
    } else {
      todoDto = TodoDto();
    }
  }

  Future initTodo() async {
    final data = await BaseRepositoryImpl().getTodoDetail(widget.id ?? 0);
    todoDto = data as TodoDto;
    titleController.text = data.title ?? "";
    contentController.text = data.content ?? "";
    imageUrl = data.imageUrl ?? "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Add Todo"),
        ),
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    label: const Text("Title"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: contentController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    label: const Text("Content"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                if (imageUrl != null)
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      width: double.infinity,
                      child: Image.network(imageUrl ?? ""),
                    ),
                  ),
                if (imageResult != null)
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.file(
                        File(imageResult?['file'] ?? ""),
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () async {
                    imageResult = await pickFile(context);
                    imageUrl = null;
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 0, 0, 0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hình ảnh/Video mô tả',
                                style: GoogleFonts.roboto(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Tối đa 1 tệp',
                                style: GoogleFonts.roboto(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.add_circle)
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () async {
                    if (widget.id != null) {
                      if (imageResult != null) {
                        final imgUrl = await context.runTask(
                          BaseRepositoryImpl().uploadImage(
                            imageResult?['name'] ?? "",
                            File(imageResult?['file'] ?? ""),
                          ),
                        );
                        todoDto.imageUrl = imgUrl;
                      }
                      todoDto.title = titleController.text;
                      todoDto.content = contentController.text;
                      await context
                          .runTask(context.read<TodoBloc>().updateTodo(todoDto))
                          .then((value) {
                        Navigator.pop(context);
                      });
                    } else {
                      if (imageResult != null) {
                        final imgUrl = await context.runTask(
                          BaseRepositoryImpl().uploadImage(
                            imageResult?['name'] ?? "",
                            File(imageResult?['file'] ?? ""),
                          ),
                        );
                        todoDto.imageUrl = imgUrl;
                      }
                      todoDto.title = titleController.text;
                      todoDto.content = contentController.text;
                      await context
                          .runTask(context.read<TodoBloc>().addTodo(todoDto))
                          .then((value) {
                        Navigator.pop(context);
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                  ),
                  child: const Text("Lưu"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<Map<String, String>> pickFile(context) async {
    // if (files.length >= 3) {
    //   await showDialog(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return AlertDialog(
    //           title: const Text(''),
    //           content: const Text('Tối đa chỉ được chọn 3 tệp'),
    //           actions: <Widget>[
    //             TextButton(
    //               child: const Text('Đóng'),
    //               onPressed: () {
    //                 Navigator.pop(context);
    //               },
    //             ),
    //           ],
    //         );
    //       });
    //   return;
    // }
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.media,
      // allowedExtensions: ['jpg', 'png', 'mp4'],
      withData: true,
    );

    // if (result != null) {
    //   if (result.files[0].size > 10240000) {
    //     await showDialog(
    //         context: context,
    //         builder: (BuildContext context) {
    //           return AlertDialog(
    //             title: const Text(''),
    //             content: const Text('Kích thước tệp chỉ được dưới 10MB'),
    //             actions: <Widget>[
    //               TextButton(
    //                 child: const Text('Đóng'),
    //                 onPressed: () {
    //                   Navigator.pop(context);
    //                 },
    //               ),
    //             ],
    //           );
    //         });
    //     return;
    //   }
    //   files.add(result.files[0]);
    //   setState(() {});
    // }
    return {
      'name': result?.files.single.name ?? "",
      'file': result?.files.single.path ?? "",
    };
  }
}
